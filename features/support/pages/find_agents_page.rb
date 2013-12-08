require "./features/support/pages/common_search_page"

class FindAgentsPage < CommonSearchPage
  def wait_for_page_to_load
    super
    wait_until { find_agents_active }
    self
  end

  private

  def find_agents_active
    @driver.find_element(:css, ".agent.rui-nav-active")
  end
end
