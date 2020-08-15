Feature: Register
    Order to use the application
    As a app user
    I want to submit the form with Register, Facebook and Google

    Background:
        Given I am on the Tutorial Screen
        Then I click on Next

    @CT001 @ValidCredentials @CreateAccount
    Scenario: Show food home screen when try to login with all informations filled
        When I click on I am New button
        And I fill the email with the personalEmail
        And I fill the phone number with the phoneNumber
        And I fill the password with password
        When I click on Create Account button
        And I fill the tokenNumber
        Then I should see Categories Popular Screen

    @CT002 @SeeFields @CreateAccount
    Scenario: Show Email, Phone Number and Password Fields on Create Account screen
        When I click on I am New button
        Then I should see the field personalEmail
        Then I should see the field phoneNumber
        Then I should see the field password

    @CT003 @CreateAccountButton
    Scenario: Ensure that exists Create Account Button
        When I click on I am New button
        Then I should see create account button

    @CT005 @IAmANewButton @InitialScreen
    Scenario: Exists I Am New button
        When I click on I am New button

