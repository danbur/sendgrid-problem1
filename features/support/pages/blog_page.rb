require "./features/support/pages/common_search_page"

class BlogPage < CommonSearchPage
  def wait_for_page_to_load
    super
    wait_until { blog_active }
    self
  end

  def category_links_text
    category_links.map { |link| link.text }
  end

  private

  def blog_active
    @driver.find_element(:css, ".blog.rui-nav-active")
  end

  def category_links
    @driver.find_elements(:css, "#category-menu > ul > li > a")
  end
end
