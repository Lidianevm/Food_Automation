Before do |scenario|
  $scenario_name = scenario.feature.name.gsub(" ", "_")
  $result_path = "features/screenshots"
  $folder_name = "#{$result_path}/#{Time.now.strftime("%Y%m%d%H%M%S")}_#{$scenario_name.downcase!}"
  $txt_name = "Log_#{$scenario_name}"
  $driver.start_recording_screen video_type: 'h264', time_limit: '500'
  Dir.mkdir($folder_name) unless File.exists?($folder_name)
end

After do |scenario|
  file_name = "screenshot_#{Time.now.strftime("%Y%m%d%H%M%S")}_FAILED.png"
  $driver.screenshot(File.join("#{$folder_name}", file_name))

  if scenario.failed?
    embed("#{$folder_name}/#{file_name}", "image/png")
  end
  $driver.driver_quit
end

AfterStep do |scenario|
  file_name = "screenshot_#{Time.now.strftime("%Y%m%d%H%M%S")}_OK.png"

  $driver.screenshot(File.join($folder_name, file_name))
  embed("#{$folder_name}/#{file_name}", "image/png")
end
