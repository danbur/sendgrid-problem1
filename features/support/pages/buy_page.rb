require "./features/support/pages/common_search_page"

class BuyPage < CommonSearchPage
  def wait_for_page_to_load
    super
    wait_until { buy_active }
    self
  end

  def select_state(state)
    area_for_state(state).click
    wait_until { suburb_select.displayed? }
  end

  private

  def buy_active
    @driver.find_element(:css, ".buy.rui-nav-active")
  end

  def area_for_state(state)
    @driver.find_element(:css, ".searchForm area#area_" + state)
  end

  def suburb_select
    @driver.find_element(:css, ".searchForm select#suburbSelect")
  end
end
