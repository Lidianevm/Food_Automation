class TokenScreen < BaseScreen
  def autenticationPin
    #####
    firstPin = "(//*[@index=\"3\"])[1]"
    secondPin = "(//*[@index=\"4\"])[1]"
    thirdPin = "(//*[@index=\"5\"])[1]"
    fourthPin = "(//*[@index=\"6\"])[1]"
    btn_Submit = "//*[@text=\"SUBMIT CODE\"]"
    btn_one = "//*[@text=\"1\"]"
    #####

    ## Input First Pin ##
    clickbyXpath(firstPin)
    clickbyXpath(btn_one) if @driver.is_keyboard_shown

    ## Input Second Pin ##
    clickbyXpath(secondPin)
    clickbyXpath(btn_one) if @driver.is_keyboard_shown

    ## Input Third Pin ##
    clickbyXpath(thirdPin)
    clickbyXpath(btn_one) if @driver.is_keyboard_shown

    ## Input Fourth Pin ##
    clickbyXpath(fourthPin)
    clickbyXpath(btn_one) if @driver.is_keyboard_shown

    ## Click Submit ##
    clickbyXpath(btn_Submit)
  end
end
