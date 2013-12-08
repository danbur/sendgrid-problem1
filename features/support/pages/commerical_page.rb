require "./features/support/pages/page"

class CommercialPage < Page
  def wait_for_page_to_load
    wait_until { header_logo }
    self
  end

  def header_logo_hover_text
    header_logo.attribute("title")
  end

  private

  def header_logo
    @driver.find_element(:css, ".header .logo")
  end
end
