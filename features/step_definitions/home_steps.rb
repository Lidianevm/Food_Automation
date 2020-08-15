Then('I should see Categories Popular Screen') do
  @home ||= HomeScreen.new
  @home.categoriesPopularScreen
end
