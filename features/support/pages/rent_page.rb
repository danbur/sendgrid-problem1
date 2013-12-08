require "./features/support/pages/common_search_page"

class RentPage < CommonSearchPage
  def initialize(driver)
    super(driver)
  end

  def verify_base_elements
    wait_until { rent_active }
  end

  private

  def rent_active
    @driver.find_element(:css, ".rent.rui-nav-active")
  end
end
