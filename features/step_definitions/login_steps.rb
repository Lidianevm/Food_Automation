When("I click on I am New button") do
  @login ||= LoginScreen.new
  @login.click_Im_a_New
end

And("I fill the phone number with the phoneNumber") do
  @login ||= LoginScreen.new
  @login.fillLoginPhone
end

When("I fill the email with the personalEmail") do
  @login ||= LoginScreen.new
  @login.fillLoginEmail
end

When("I fill the password with password") do
  @login ||= LoginScreen.new
  @login.fillLoginPassword
end

When("I click on Create Account button") do
  @login ||= LoginScreen.new
  @login.clickCreateAccount
end
