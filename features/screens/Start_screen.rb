class StartScreen < BaseScreen
  def clicarPermitir
    btn_Permitir = "new UiSelector().text('Permitir')"
    waitfor(btn_Permitir)
  end
end
