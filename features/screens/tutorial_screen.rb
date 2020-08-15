class TutorialScreen < BaseScreen
  def validateScreen
    ######################
    message = "//*[@text=('Find your flavour')] | //*[@text=('Choose your meal')] | //*[@text=('Easy payment')] | //*[@text=('Delivered fast')]"
    ######################
    waitforXpath(message)
  end

  def clickNext
    ######################
    btn_Next = "//*[@text=('NEXT')] | //*[@text=('DONE')]"
    ######################

    $i = 0
    $num = 4
    while $i < $num
      clickbyXpath(btn_Next)
      $i += 1
    end
  end
end
