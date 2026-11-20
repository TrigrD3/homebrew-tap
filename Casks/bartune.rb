cask "bartune" do
  version "0.2.1"
  sha256 "bc16107b5ea6bb92743791f47b08335fdcc577fecbba745d255351470036411e"

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
