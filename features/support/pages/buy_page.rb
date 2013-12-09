require "./features/support/pages/common_search_page"

class BuyPage < CommonSearchPage
  def wait_for_page_to_load
    super
    wait_until { buy_active }
    self
  end

  def select_state(state)
    area_for_state(state).click
    wait_until { suburb_options_present }
    self
  end

  def select_suburb(suburb)
    suburb_option(suburb).click
    if (include_surrounding.selected?)
      include_surrounding.click
    end
    self
  end

  def select_property_type(property_type)
    property_type_entry.click
    wait_until { property_type_drop_down.displayed? }
    property_type_label(property_type).click
    property_type_entry.click
    wait_until { !property_type_drop_down.displayed? }
    self
  end

  def set_maximum_price(price)
    maximum_price_entry.click
    wait_until { maximum_price_drop_down.displayed? }
    maximum_price_label(price).click
    wait_until { !maximum_price_drop_down.displayed? }
    self
  end

  def click_search_button
    search_button.click
    BuyResultsPage.new(@driver)
  end

  private

  def buy_active
    @driver.find_element(:css, ".buy.rui-nav-active")
  end

  def area_for_state(state)
    @driver.find_element(:css, ".searchForm area#area_" + state)
  end

  def suburb_options_present
    @driver.find_element(:css, "#suburbSelect option")
  end

  def suburb_option(suburb)
    @driver.find_element(:xpath, "//select[@id='suburbSelect']/option[text()='#{suburb}']")
  end

  def region_entry
    @driver.find_element(:id, "state_where")
  end

  def property_type_entry
    @driver.find_element(:id, "state_propertyType")
  end

  def property_type_drop_down
    @driver.find_element(:id, "LMIDD_state_propertyType")
  end

  # Returns the drop-down label for the specified property type
  def property_type_label(type)
    labels = @driver.find_elements(:css, "#LMIDD_state_propertyType label")
    labels.each do |label|
      if (label.text == type)
        return label
      end
    end
    raise "Property type #{type} not found in drop-down list"
  end

  def maximum_price_entry
    @driver.find_element(:id, "state_maxPrice")
  end

  def maximum_price_drop_down
    return @driver.find_element(:id, "LMIDD_state_maxPrice")
  end

  # Returns the drop-down label for a specified maximum price
  def maximum_price_label(price)
    labels = @driver.find_elements(:css, "#LMIDD_state_maxPrice dd")
    labels.each do |label|
      if (label.text == price)
        return label
      end
    end
    raise "Maximum price #{price} not found in drop-down list"
  end

  def search_button
    @driver.find_element(:id, "state_searchBtnState")
  end

  def include_surrounding
    @driver.find_element(:id, "state_includeSurrounding")
  end
end
