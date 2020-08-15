Given("I am on the Tutorial Screen") do
  @tutorial ||= TutorialScreen.new
  @tutorial.validateScreen
end

Then("I click on Next") do
  @tutorial ||= TutorialScreen.new
  @tutorial.clickNext
end
