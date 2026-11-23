cask "bartune" do
  version "0.6.0"
  sha256 "a5c80d66e1c16636b46c0e5bdb52f34bbf793d0cca3f228291e547b2d7f55bdc"

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
