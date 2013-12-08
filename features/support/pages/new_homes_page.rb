require "./features/support/pages/common_search_page"

class SoldPage < CommonSearchPage
  def initialize(driver)
    super(driver)
    wait_for_element { sold_active }
  end

  private

  def sold_active
    @driver.find_element(:css, ".sold.rui-nav-active")
  end
end
