require "./features/support/pages/common_search_page"

class SoldPage < CommonSearchPage
  def wait_for_page_to_load
    super
    wait_until { sold_active }
    self
  end

  private

  def sold_active
    @driver.find_element(:css, ".sold.rui-nav-active")
  end
end
