require "./features/support/pages/page.rb"

class NonCommercialPage < Page
  def wait_for_page_to_load
    wait_until { header_logo }
  end

  def header_logo_hover_text
    header_logo.attribute("title")
  end

  def click_buy_link
    buy_link.click
    BuyPage.new(@driver)
  end

  def click_rent_link
    rent_link.click
    RentPage.new(@driver)
  end

  def click_share_link
    share_link.click
    SharePage.new(@driver)
  end

  def click_sold_link
    sold_link.click
    SoldPage.new(@driver)
  end

  def click_new_homes_link
    new_homes_link.click
    NewHomesPage.new(@driver)
  end

  def click_retire_link
    retire_link.click
    RetirePage.new(@driver)
  end

  def click_find_agents_link
    find_agents_link.click
    FindAgentsPage.new(@driver)
  end

  def click_home_ideas_link
    home_ideas_link.click
    HomeIdeasPage.new(@driver)
  end

  def click_blog_link
    blog_link.click
    BlogPage.new(@driver)
  end

  def click_commercial_link
    commercial_link.click
    CommercialPage.new(@driver)
  end

  private

  def header_logo
    @driver.find_element(:css, 'header .rui-main-logo')
  end

  def rent_link
    @driver.find_element(:css, '.rent a span')
  end

  def buy_link
    @driver.find_element(:css, '.buy a span')
  end

  def share_link
    @driver.find_element(:css, '.share a span')
  end

  def sold_link
    @driver.find_element(:css, '.sold a span')
  end

  def new_homes_link
    @driver.find_element(:css, '.new_homes a span, .new-homes a span')
  end

  def retire_link
    @driver.find_element(:css, '.retire a span')
  end

  def find_agents_link
    @driver.find_element(:css, '.agent a span')
  end

  def home_ideas_link
    @driver.find_element(:css, '.home_ideas a span')
  end

  def blog_link
    @driver.find_element(:css, '.blog a span')
  end

  def commercial_link
    @driver.find_element(:css, '.commercial a span')
  end
end
