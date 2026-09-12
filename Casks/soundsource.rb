cask "soundsource" do
  version "5.9.0"
  sha256 "b98da1624bf16cbfa1d7b1f0c5a5f1e22afbe640c5a321ade6bef37f9864f75c"

  url "https://rogueamoeba.com/legacy/downloads/SoundSource-#{version.no_dots}.zip",
      verified: "rogueamoeba.com/legacy/downloads/"
  name "SoundSource"
  desc "Sound and audio controller (Legacy version 5)"
  homepage "https://rogueamoeba.com/soundsource/"

  livecheck do
    skip "Pinned to legacy v5"
  end

  auto_updates false
  depends_on macos: ">= :sonoma"

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
