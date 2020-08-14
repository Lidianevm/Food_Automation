class AutenticationScreen < BaseScreen
  def auteticationPin
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
    if @driver.is_keyboard_shown
      clickbyXpath(btn_one)
    end

    ## Input Second Pin ##
    clickbyXpath(secondPin)
    if @driver.is_keyboard_shown
      clickbyXpath(btn_one)
    end

    ## Input Third Pin ##
    clickbyXpath(thirdPin)
    if @driver.is_keyboard_shown
      clickbyXpath(btn_one)
    end

    ## Input Fourth Pin ##
    clickbyXpath(fourthPin)
    if @driver.is_keyboard_shown
      clickbyXpath(btn_one)
    end

    ## Click Submit ##
    clickbyXpath(btn_Submit)
  end
end
