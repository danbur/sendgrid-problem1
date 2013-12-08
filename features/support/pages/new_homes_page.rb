require "./features/support/pages/common_search_page"

class NewHomesPage < CommonSearchPage
  def wait_for_page_to_load
    super
    wait_until { new_homes_active }
  end

  def sub_nav_links_text
    sub_nav_links.map { |link| link.text }
  end

  private

  def new_homes_active
    @driver.find_element(:css, ".new-homes.rui-nav-active, "\
                         ".new_homes.rui-nav-active")
  end

  def sub_nav_links
    @driver.find_elements(:css, ".rui-sub-nav a span")
  end
end
