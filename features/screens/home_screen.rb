
class HomeScreen < BaseScreen
  def categoriesPopularScreen

    ############################################
    lbl_categories = "//*[@text=\"Categories\"]"
    lbl_popular = "//*[@text=\"Popular\"]"
    ############################################

    ## Wait until is visible ##
    waitforXpath(lbl_categories)
    waitforXpath(lbl_popular)
  end
end
