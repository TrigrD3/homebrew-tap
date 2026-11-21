cask "bartune" do
  version "0.4.0"
  sha256 "cbfb1f4c79b9f47690e5cb4c04933d2edfe2fd1bed5e8d6bf5d2b553335f4bc5"

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
