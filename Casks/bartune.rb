cask "bartune" do
  version "0.2.0"
  sha256 "a379f9114e79da8cdc36d5b4880115b6fc95b855eda5b229ae493b62872b2db7"

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
