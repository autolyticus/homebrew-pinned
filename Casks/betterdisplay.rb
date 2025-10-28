cask "betterdisplay" do
  version "3.5.6b"
  sha256 "ec581f596723dea8fdd92c7336b6f1674b296238972ed09f1867cb4b7526aae7"

  url "https://github.com/waydabber/BetterDisplay/releases/download/v#{version}/BetterDisplay-v#{version}.dmg",
      verified: "github.com/waydabber/BetterDisplay/"
  name "BetterDisplay"
  desc "Display management tool"
  homepage "https://betterdisplay.pro/"

  livecheck do
    skip "Pinned to v3.5.6b for licensing reasons"
  end

  auto_updates false

  app "BetterDisplay.app"

  uninstall quit: "pro.betterdisplay.BetterDisplay",
            login_item: "BetterDisplay"

  zap trash: [
    "~/Library/Application Support/BetterDisplay",
    "~/Library/Application Support/BetterDummy",
    "~/Library/Caches/pro.betterdisplay.BetterDisplay",
    "~/Library/Caches/SentryCrash/BetterDisplay",
    "~/Library/HTTPStorages/pro.betterdisplay.BetterDisplay",
    "~/Library/HTTPStorages/pro.betterdisplay.BetterDisplay.binarycookies",
    "~/Library/Preferences/pro.betterdisplay.BetterDisplay.plist",
  ]
end
