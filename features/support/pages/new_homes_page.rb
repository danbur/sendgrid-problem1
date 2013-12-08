require "./features/support/pages/common_search_page"

class NewHomesPage < CommonSearchPage
  def wait_for_page_to_load
    wait_until { new_homes_active }
  end

  private

  def new_homes_active
    @driver.find_element(:css, ".new_homes.rui-nav-active")
  end
end
