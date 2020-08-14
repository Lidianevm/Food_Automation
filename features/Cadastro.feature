Feature: Register
    In order to use the application
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
        Then I should see the home screen

    @CT002 @SeeFields @CreateAccount
    Scenario: Show Email, Phone Number and Password Fields on Create Account screen
        Given I am on the Tutorial Screen
        Then I click on Next
        When I on the Create Account screen
        Then I should see the field personalEmail
        Then I should see the field phoneNumber
        Then I should see the field password

    @CT003 @CreateAccountButton
    Scenario: Ensure that exists Create Account Button
        When I on the Create Account screen
        Then I should see create account button

    @CT004 @AutenticationScreen
    Scenario: Show Autentication Screen
        When I on the Autentication Screen
        And I fill the tokenNumber
        Then I should see Categories Popular Screen

    @CT005 @IAmANewButton @InitialScreen
    Scenario: Exists I Am New button
        When I on the Initial Screen
        And I click on the I Am New button
        Then I should see Create Account Screen

