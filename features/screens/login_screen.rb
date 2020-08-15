class LoginScreen < BaseScreen
  def click_Im_a_New
    btn_ImaNew = "//*[@text=(\"I AM NEW\")]"
    clickbyXpath(btn_ImaNew)
  end

  def fillLoginEmail
    ####################################################
    input_email = "//*[@text=(\"E-mail\")]"
    ####################################################
    ## Input Email ##
    clickbyXpath(input_email)
    @driver.find_element(:xpath, input_email).send_keys("lidianevalentim_@hotmail.com")
    sleep 1
    @driver.hide_keyboard if @driver.is_keyboard_shown
  end

  def fillLoginPhone
    ############################################
    input_phoneNumber = "//*[@text=(\"Phone number\")]"
    ####################################################
    ## Input Phone ##
    clickbyXpath(input_phoneNumber)
    @driver.find_element(:xpath, input_phoneNumber).send_keys("81996050988")
    sleep 1
    @driver.hide_keyboard if @driver.is_keyboard_shown
  end

  def fillLoginPassword
    ###########################################
    input_password = "//*[@text=(\"Password\")]"
    ####################################################
    ## Input Password ##
    clickbyXpath(input_password)
    @driver.find_element(:xpath, input_password).send_keys("@lpkofood23")
    sleep 1
    @driver.hide_keyboard if @driver.is_keyboard_shown
  end

  def clickCreateAccount
    #####################################
    #btn_createAccount = "//*[@text=(\"CREATE ACCOUNT\")]"
    #btn_createAccount = 'new UiSelector().text(\"CREATE ACCOUNT\")'
    ## Click Create Account ##
    #lickbyXpath(btn_createAccount)
    sleep 5
    tapElement(1050, 970)
    sleep 5
    tapElement(930, 970)
    #@driver.find_element(:uiautomator, btn_createAccount).click
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

  def validateEmail
    ####################################################
    input_email = "//*[@text=(\"E-mail\")]"
    ####################################################
    ## Validar se o Email campo está sendo exibido ##
    waitforXpath(input_email)
  end

  def validatePhoneNumber
    ############################################
    input_phoneNumber = "//*[@text=(\"Phone number\")]"
    ####################################################
    ## Validar se o campo telefone está sendo exibido ##
    waitforXpath(input_phoneNumber)
  end

  def validatePassword
    ###########################################
    input_password = "//*[@text=(\"Password\")]"
    ####################################################
    ## Validar se o campo senha está sendo exibido ##
    waitforXpath(input_password)
  end

  def validateCreateAccountButton
    btn_createAccount = "//*[@text=(\"CREATE ACCOUNT\")]"
    waitforXpath(btn_createAccount)
  end

  def validateScreenCreateAccount
    screen_createAccount = "//*[@text=(\"Create Account\")]"
    waitforXpath(screen_createAccount)
  end
end
