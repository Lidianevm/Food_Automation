require "appium_lib"
require "cucumber"
require_relative "page_helper"

def caps
  { caps: { deviceName: "Nexus5X",
            platformName: "Android",
            app: (File.join(File.dirname(__FILE__), "Apk_Ifood.apk")),
            appActivity: "com.fooddelivery_pro.MainActivity",
            appPackage: "com.fooddelivery_pro",
            automationName: "UiAutomator2",
            autoGrantPermissions: "true",
            fullReset: "true",
            newCommandTimeout: "5000" } }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
World(Screens)
