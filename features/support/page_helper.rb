Dir[File.join(File.dirname(__FILE__), "../screens/*_screen.rb")].each { |file| require file }

module Screens
  def base
    @base ||= BaseScreen.new
  end

  def start
    @start ||= StartScreen.new
  end

  def home
    @home ||= HomeScreen.new
  end
end
