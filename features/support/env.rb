require "rubygems"
require "appium_lib"
require "cucumber"
require_relative "screen_helper.rb"

# Class to not pollute 'Object' class with appium methods
class AppiumWorld
end

def caps
  { caps: { deviceName: "Nexus5X",
            platformName: "Android",
            app: (File.join(File.dirname(__FILE__), "Apk_Food.apk")),
            appActivity: "com.fooddelivery_pro.MainActivity",
            appPackage: "com.fooddelivery_pro",
            automationName: "UiAutomator2",
            autoGrantPermissions: "true",
            fullReset: "true",
            newCommandTimeout: "5000" } }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

World do
  AppiumWorld.new
end
