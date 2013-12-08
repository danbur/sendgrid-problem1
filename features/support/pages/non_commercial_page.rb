require "./features/support/pages/page.rb"

class NonCommercialPage < Page
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

  private

  def rent_link
    @driver.find_element(:css, '.rent a span');
  end

  def buy_link
    @driver.find_element(:css, '.buy a span');
  end

  def share_link
    @driver.find_element(:css, '.share a span');
  end

  def sold_link
    @driver.find_element(:css, '.sold a span');
  end
end
