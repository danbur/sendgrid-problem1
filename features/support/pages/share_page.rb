require "./features/support/pages/common_search_page"

class SharePage < CommonSearchPage
  def initialize(driver)
    super(driver)
  end
  
  def verify_base_elements
    wait_for_element { share_active }
  end

  private

  def share_active
    @driver.find_element(:css, ".share.rui-nav-active")
  end
end
