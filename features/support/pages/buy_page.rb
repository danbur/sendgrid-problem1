require "./features/support/pages/common_search_page"

class BuyPage < CommonSearchPage
  def wait_for_page_to_load
    super
    wait_until { buy_active }
    self
  end

  private

  def buy_active
    @driver.find_element(:css, ".buy.rui-nav-active")
  end
end
