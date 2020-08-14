require_relative "screen_helper.rb"

Before do
  $driver.start_driver
end

Before do |scenario|
  ## Responsável por criar o diretório com evidencias, antes de iniciar o cenário.
  $scenario_name = scenario.name.gsub(/[#+ (),-]/, "#" => "", "+" => "", "exemplos" => "", " " => "_", "(" => "", ")" => "", "," => "", "-" => "")
  $result_path = "features/evidences"
  $folder_name = "#{$result_path}/#{Time.now.strftime("%Y%m%d%H%M%S")}_#{$scenario_name.downcase!}"
  Dir.mkdir($folder_name) unless File.exist?($folder_name)

  ## Start Screen Recording
  @driver.start_recording_screen video_size: "1280x720", time_limit: "180", bit_rate: "5000000" # Android
end

AfterStep do
  ## Geracao de evidencias apos cada step concluido.
  time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
  screenshot_name = time_stamp + ".png"
  screenshot_file = File.join($folder_name, screenshot_name)
  $driver.screenshot(screenshot_file)
  # embed("#{screenshot_file}", "image/png")
end

After do
  time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
  time_stamp_video = Time.now.strftime("%Y%m%d_%H%M%S")
  screenshot_name = time_stamp + ".png"
  screenshot_file = File.join($folder_name, screenshot_name)
  $driver.screenshot(screenshot_file)
  # embed("#{screenshot_file}", "image/png")

  ## Stop Screen Recording
  scenario_name_video = $scenario_name + time_stamp_video + ".mp4"
  scenario_video_file = File.join($folder_name, scenario_name_video)
  @driver.stop_and_save_recording_screen scenario_video_file

  ## Driver Quit
  $driver.driver_quit
end
