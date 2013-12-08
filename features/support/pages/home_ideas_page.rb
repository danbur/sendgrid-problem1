require "./features/support/pages/common_search_page"

class HomeIdeasPage < CommonSearchPage
  def wait_for_page_to_load
    super
    wait_until { home_ideas_active }
    self
  end

  def home_ideas_logo_hover_text
    home_ideas_logo.attribute("title")
  end

  private

  def home_ideas_active
    @driver.find_element(:css, ".home-ideas.rui-nav-active")
  end

  def home_ideas_logo
    @driver.find_element(:css, ".hi-logo")
  end
end
