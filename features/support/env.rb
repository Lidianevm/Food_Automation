require "appium_lib"
require "cucumber"

def caps
  { caps: { deviceName: "Nexus5X",
            platformName: "Android",
            app: (File.join(File.dirname(__FILE__), "Apk_Ifood.apk")),
            appActivity: "br.com.brainweb.ifood.mvp.splash.view.SplashScreenActivity",
            appPackage: "br.com.brainweb.ifood",
            automationName: "UiAutomator2",
            autoGrantPermissions: "true",
            newCommandTimeout: "5000" } }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
World(Screens)
