require "rspec/expectations"
require "./features/support/pages/common_search_page"

class SharePage < CommonSearchPage
  def wait_for_page_to_load
    wait_until { share_active }
    self
  end
  
  private

  def share_active
    @driver.find_element(:css, ".share.rui-nav-active")
  end
end
