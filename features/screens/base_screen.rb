class BaseScreen
  #Metodo para esperar um elemento na tela

  def waitforuiAutomator(element)
    wait = Selenium::WebDriver::Wait.new :timeout => 10
    wait.until { @driver.find_element(:uiautomator, element).displayed? }
  end

  def waitForId(element)
    wait = Selenium::WebDriver::Wait.new :timeout => 10
    wait.until { @driver.find_element(:id, element).displayed? }
  end

  def waitforXpath(element)
    wait = Selenium::WebDriver::Wait.new :timeout => 10
    wait.until { @driver.find_element(:xpath, element).displayed? }
  end

  def clickbyID(element)
    @driver.find_element(:id, element).click
  end
end
