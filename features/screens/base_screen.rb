class BaseScreen
  ## Metodo para esperar um elemento na tela ##
  def waitforXpath(element)
    wait = Selenium::WebDriver::Wait.new :timeout => 15
    wait.until { @driver.find_element(:xpath, element).displayed? }
  end

  ## Method Override
  def method_missing(method, *args)
    if method.to_s.start_with?("touch_")
      wait_for_element_then_touch public_send(method.to_s.sub("touch_", ""))
    elsif method.to_s.start_with?("swipe_up_to_")
      swipe_to_element public_send(method.to_s.sub("swipe_up_to_", ""))
    elsif method.to_s.start_with?("enter_")
      enter args[0], public_send(method.to_s.sub("enter_", ""))
    elsif method.to_s.end_with?("_displayed?")
      element_displayed? public_send(method.to_s.sub("_displayed?", ""))
    elsif method.to_s.end_with?("_on_screen?")
      element_on_screen? public_send(method.to_s.sub("_on_screen?", ""))
    else
      super
    end
  end

  # This method is necessary, because the method_missing is overriding
  def respond_to_missing?
    true
  end

  def waitForElement(element, value, time)
    $driver.wait_true(time) { $driver.exists { $driver.find_element(element, value) } }
  end

  ## Metodo para clicar no objeto por ID ##
  def clickbyID(element)
    wait = Selenium::WebDriver::Wait.new :timeout => 15
    wait.until { @driver.find_element(:id, element).displayed? }
    driver.find_element(:id, element).enabled?
    driver.find_element(:id, element).click
  end

  ## Metodo para clicar no objeto por Xpath ##
  def clickbyXpath(element)
    wait = Selenium::WebDriver::Wait.new :timeout => 15
    wait.until { @driver.find_element(:xpath, element).displayed? }
    driver.find_element(:xpath, element).enabled?
    driver.find_element(:xpath, element).click
  end
end
