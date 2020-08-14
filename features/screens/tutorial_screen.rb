class TutorialScreen < BaseScreen
  def clickNext
    message = "//*[@text=(\"Find your flavour\") | //*[@text=(\"Choose your meal\")] | //*[@text=(\"Easy payment\")] | //*[@text=(\"Delivered fast\")]"
    btn_Next = "//*[@text=(\"NEXT\")] | //*[@text=(\"DONE\")]"
    while driver.find_element(:xpath, message).displayed?
      clickbyXpath(btn_Next)
    end
  end
end
