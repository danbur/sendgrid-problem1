require "./features/support/configuration"

class Page
  def initialize(driver)
    @driver = driver
  end

  private

  def expect(value)
    RSpec::Matchers::expect(value)
  end

  # Wait for a condition
  def wait_until(timeout = Configuration::TIMEOUT)
    wait = Selenium::WebDriver::Wait.new(:timeout => timeout)
    wait.until { yield }
  end

  # Wait for a condition, but do not throw an exception on timeout
  def try_wait_until(timeout = Configuration::TIMEOUT)
    begin
      wait_until(timeout) { yield }
    rescue Selenium::WebDriver::Error::TimeOutError
    end
  end

end
