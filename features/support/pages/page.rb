class Page
  BASE_ELEMENT_TIMEOUT = 10

  def initialize(driver)
    @driver = driver
  end

  private

  def wait_until
    wait = Selenium::WebDriver::Wait.new(:timeout => BASE_ELEMENT_TIMEOUT)
    wait.until { yield }
  end

end
