cask "timezony" do
  version "1.0.3"
  sha256 "bebbd19b5f50413358eac87f5452a5a06d8ec7b2cd8a71277e17a140347b4529"

  url "https://github.com/FujiwaraChoki/timezony/releases/download/v#{version}/Timezony-v#{version}.dmg",
      verified: "github.com/FujiwaraChoki/timezony/"
  name "Timezony"
  desc "macOS menu bar app for tracking multiple timezones"
  homepage "https://github.com/FujiwaraChoki/timezony"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false

  app "Timezony.app"

  # Since the app is not notarized and causes a Gatekeeper quarantine error,
  # remove the quarantine attribute upon installation.
  postflight do
    system_command "xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/Timezony.app"],
                   sudo: false
  end

  uninstall quit: "com.timezony.app"

  zap trash: [
    "~/Library/Application Support/com.timezony.app",
    "~/Library/Caches/com.timezony.app",
    "~/Library/Preferences/com.timezony.app.plist",
  ]
end
