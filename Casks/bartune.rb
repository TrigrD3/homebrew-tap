cask "bartune" do
  version "0.9.0"
  sha256 "3c4acae4fb315fcc20d303131368b2dc310409fd45515de56b4321f4b68f1e7e"

  url "https://github.com/TrigrD3/bartune/releases/download/v#{version}/BarTune-#{version}.dmg"
  name "BarTune"
  desc "Real-time karaoke lyrics in the macOS menu bar left of the MacBook notch"
  homepage "https://github.com/TrigrD3/bartune"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "BarTune.app"

  zap trash: [
    "~/Library/Preferences/com.arya.BarTune.plist",
  ]
end
