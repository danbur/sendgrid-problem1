require "./features/support/pages/common_search_page"

class RentPage < CommonSearchPage
  def wait_for_page_to_load
    super
    wait_until { rent_active }
    self
  end

  private

  def rent_active
    @driver.find_element(:css, ".rent.rui-nav-active")
  end
end
