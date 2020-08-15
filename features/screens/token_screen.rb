class TokenScreen < BaseScreen
  def autenticationPin
    #####
    btn_Submit = "//*[@text=\"SUBMIT CODE\"]"
    btn_one = "//*[@text=\"1\"]//.."
    #####

    ## Input First Pin ##
    $i = 0
    $num = 4
    while $i < $num
      sleep 5
      tapElement(199, 1076)
      $i += 1
      #sleep 5
    end

    ## Click Submit ##
    clickbyXpath(btn_Submit)
  end
end
