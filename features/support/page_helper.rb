Dir[File.join(File.dirname(__FILE__), "../screens/*_screen.rb")].each { |file| require file }

module Screens
  def base
    @base ||= BaseScreen.new
  end

  def tutorial
    @start ||= TutorialScreen.new
  end

  def login
    @home ||= RegisterScreen.new
  end

  def autentication
    @home ||= AutenticationScreen.new
  end

  def home
    @home ||= HomeScreen.new
  end
end
