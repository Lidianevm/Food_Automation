class RegisterScreen < BaseScreen
  def click_Im_a_New
    btn_ImaNew = "//*[@text=(\"I AM NEW\")]"
    clickbyXpath(btn_ImaNew)
  end

  def fillLoginData
    ####################################################
    input_email = "//*[@text=(\"E-mail\")]"
    input_password = "//*[@text=(\"Password\")]"
    btn_createAccount = "//*[@text=(\"CREATE ACCOUNT\")]"
    #####################################################

    ## Input Email ##
    clickbyXpath(input_email)
    @driver.find_element(:xpath,  input_email).send_keys("dado")

    ## Input Phone ##
    clickbyXpath(input_phoneNumber)
    @driver.find_element(:xpath,  input_phoneNumber).send_keys("dado")

    ## Input Password ##
    clickbyXpath(input_password)
    @driver.find_element(:xpath,  input_password).send_keys("dado")

    ## Click Create Account ##
    clickbyXpath(btn_createAccount)
  end

  ## Click Sign Up with facebook ##
  def clickFacebookButton
    btn_facebook = "//*[@text=(\"SIGN UP WITH FACEBOOK\")]"
    clickbyXpath(btn_facebook)
  end

  ## Click Sign Up with Google ##
  def clickGoogleButton
    btn_google = "//*[@text=(\"SIGN UP WITH GOOGLE\")]"
    clickbyXpath(btn_google)
  end
end
