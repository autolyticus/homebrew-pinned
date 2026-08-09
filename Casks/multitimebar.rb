cask "multitimebar" do
  version "1.0.2"
  sha256 "658ef6db3a51240620ba825907f972162296dd5d35520ccd56ba5d354951726e"

  url "https://github.com/Ferin79/MultiTimeBar/releases/download/v#{version}/MultiTimeBar-#{version}.dmg",
      verified: "github.com/Ferin79/MultiTimeBar/"
  name "MultiTimeBar"
  desc "Free, open source, native macOS menu bar app for tracking multiple time zones"
  homepage "https://github.com/Ferin79/MultiTimeBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false

  app "MultiTimeBar.app"

  postflight do
    system_command "xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/MultiTimeBar.app"],
                   sudo: false
  end

  uninstall quit: "com.ferin79.multitimebar"

  zap trash: [
    "~/Library/Application Support/com.ferin79.multitimebar",
    "~/Library/Caches/com.ferin79.multitimebar",
    "~/Library/Preferences/com.ferin79.multitimebar.plist",
  ]
end
