cask "bartune" do
  version "0.5.0"
  sha256 "cfa4dcc0de99905d6164c6f1c2ebcb680bb80ec17b6ab0c1579da5f4ea22d1ea"

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
