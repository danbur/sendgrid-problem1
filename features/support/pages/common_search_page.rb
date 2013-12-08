require "./features/support/pages/non_commercial_page"

class CommonSearchPage < NonCommercialPage
  def search_headline_text
    search_headline.text
  end

  def search_hero_message_text
    search_hero_message.text
  end

  private

  def search_headline
    @driver.find_element(:class, "searchHeadline")
  end

  def search_hero_message
    @driver.find_element(:class, "hero-message")
  end
 end
