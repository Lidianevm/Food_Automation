Dir[File.join(File.dirname(__FILE__), "../screens/*_screen.rb")].sort.each { |file| require file }

module ScreenHelper
  def base
    @base ||= BaseScreen.new
  end

  def tutorial
    @tutorial ||= TutorialScreen.new
  end

  def login
    @login ||= LoginScreen.new
  end

  def token
    @token ||= TokenScreen.new
  end

  def home
    @home ||= HomeScreen.new
  end
end
