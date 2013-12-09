require "./features/support/pages/buy_page"

class BuyResultsPage < BuyPage
  def showing_number_of_results_text
    showing_number_of_results.text
  end

  def results_heading_text
    results_heading.text
  end

  private

  def showing_number_of_results
    return @driver.find_element(:css, "#resultsInfo p")
  end

  def results_heading
    return @driver.find_element(:css, "#searchResultsTbl .h1Wrapper")
  end
end
