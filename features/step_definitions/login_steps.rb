When("I click on I am New button") do
  @login.click_Im_a_New
end

When("I fill the email with the personalEmail") do
  @login.fillLoginEmail
end

When("I fill the phone number with the phoneNumber") do
  @login.fillLoginPhone
end

When("I fill the password with password") do
  @login.fillLoginPassword
end

When("I click on Create Account button") do
  @login.clickCreateAccount
end
