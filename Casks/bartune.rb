cask "bartune" do
  version "0.8.0"
  sha256 "576668664f0892643a31dffb80d4c8c2b11d873896f00c3fc926249cc9e19d5a"

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
