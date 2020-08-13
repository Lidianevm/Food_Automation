#colocar a tela de login

#p cada tipo de login criar um def dentro de uma classe

class cadastro
  def clicarFacebook
    btn_Facebook = "br.com.brainweb.ifood:id/facebook_button"
    clickbyID(btn_Facebook)
  end

  def preencherLogin
    input_Login = "//*[@resource-id=(\"m_login_email\")]"
    @driver.find_element(:xpath, input_Login).send_keys
  end

  def preencherSenhaFacebook
    input_SenhaFacebook = "//*[@resource-id=(\"m_login_password\")]"
    @driver.find_element(:xpath, input_Senha).send_keys
    end
  
  def clicarLogin
    btn_Login = "//*[@text=(\"Log In\")]"
    clickbyID(btn_Login)
  end

def clicarCelular
        btn_Celular = "br.com.brainweb.ifood:id/phone_button"
        clickbyID(btn_Celular)
    end
def preencherNumero
    input_Numero = "br.com.brainweb.ifood:id/com_accountkit_phone_number"
    @driver.find_element(:id, input_Numero).send_keys
end

def clicarNext
    btn_Next = "br.com.brainweb.ifood:id/com_accountkit_next_button"
    clickbyID(btn_Next)
    end
end

    
def clicarEmail
    btn_Email = "br.com.brainweb.ifood:id/email_button"
    clickbyID(btn_Email)
end

def preencherEmail
    input_Email = "br.com.brainweb.ifood:id/email_input"
    @driver.find_element(:id, input_Email).send_keys
end

def clicarContinuarEmail
    btn_ContinuarEmail = "br.com.brainweb.ifood:id/next_button"
    clickbyID(btn_Continuar)
end

def preencherSenhaEmail
    input_SenhaEmail = "br.com.brainweb.ifood:id/password_input"
    @driver.find_element(:id, input_SenhaEmail).click
end

def clicarContinuarSenha
    btn_ContinuarSenha = "br.com.brainweb.ifood:id/next_button"
    clickbyID(btn_ContinuarSenha)
end

end