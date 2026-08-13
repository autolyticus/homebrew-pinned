cask "soundsource" do
  version "5.6.0"
  sha256 "bd7299be7f0b5d1e21b72b6ef26e7a2a0eb9475dd2b1b3fbdb5ea4f0280ebdbb"

  url "https://rogueamoeba.com/legacy/downloads/SoundSource-560.zip",
      verified: "rogueamoeba.com/legacy/downloads/"
  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://rogueamoeba.com/soundsource/"

  livecheck do
    skip "Pinned to v5.6.0 legacy release"
  end

  auto_updates false

  app "SoundSource.app"

  uninstall quit: "com.rogueamoeba.soundsource"

  zap trash: [
    "~/Library/Application Support/SoundSource",
    "~/Library/Caches/com.rogueamoeba.soundsource",
    "~/Library/HTTPStorages/com.rogueamoeba.soundsource",
    "~/Library/Preferences/com.rogueamoeba.soundsource.plist",
    "~/Library/WebKit/com.rogueamoeba.soundsource",
  ]
end
