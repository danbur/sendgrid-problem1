require "./features/support/pages/common_search_page"

class RetirePage < CommonSearchPage
  def wait_for_page_to_load
    wait_until { retire_active }
    self
  end

  private

  def retire_active
    @driver.find_element(:css, ".retire.rui-nav-active")
  end
end
