cask "taskbartimezones" do
  version "1.0"
  sha256 "ebc04f876644ad96b6722e975772b020c7d97bcb60cc60317de91e24fee593ae"

  url "https://github.com/meadow-kun/taskbartimezones/releases/download/v#{version}/TaskBarTimeZones.dmg"
  name "TaskBar Time Zones"
  desc "Menu bar app that displays multiple time zones"
  homepage "https://github.com/meadow-kun/taskbartimezones"

  depends_on macos: ">= :ventura"

  app "TaskBarTimeZones.app"

  zap trash: [
    "~/Library/Preferences/com.taskbartimezones.app.plist",
  ]
end
