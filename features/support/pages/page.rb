require "./features/support/configuration"

class Page
  def initialize(driver)
    @driver = driver
  end

  private

  def expect(value)
    RSpec::Matchers::expect(value)
  end

  def wait_until
    wait = Selenium::WebDriver::Wait.new(:timeout => \
                                         Configuration::TIMEOUT)
    wait.until { yield }
  end

end
