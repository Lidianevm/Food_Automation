class BaseScreen
  ## Metodo para esperar um elemento na tela ##
  def waitforXpath(element)
    wait = Selenium::WebDriver::Wait.new :timeout => 10
    wait.until { @driver.find_element(:xpath, element).displayed? }
  end

  ## Metodo para clicar no objeto por ID ##
  def clickbyID(element)
    wait = Selenium::WebDriver::Wait.new :timeout => 10
    wait.until { @driver.find_element(:id, element).displayed? }
    @driver.find_element(:id, element).enabled?
    @driver.find_element(:id, element).click
  end

  ## Metodo para clicar no objeto por Xpath ##
  def clickbyXpath(element)
    wait = Selenium::WebDriver::Wait.new :timeout => 10
    wait.until { @driver.find_element(:xpath, element).displayed? }
    @driver.find_element(:xpath, element).enabled?
    @driver.find_element(:xpath, element).click
  end
end
