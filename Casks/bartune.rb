cask "bartune" do
  version "0.3.0"
  sha256 "ac51098809c9c0d07d91ea0089c12ad385ceff29b4c99a6a4c4fdd72b049396a"

  url "https://github.com/TrigrD3/bartune/releases/download/v#{version}/BarTune-#{version}.dmg"
  name "BarTune"
  desc "Real-time karaoke lyrics in the macOS menu bar left of the MacBook notch"
  homepage "https://github.com/TrigrD3/bartune"

  depends_on macos: ">= :ventura"

  app "BarTune.app"

  zap trash: [
    "~/Library/Preferences/com.arya.BarTune.plist",
  ]
end
