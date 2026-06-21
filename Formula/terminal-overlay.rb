class TerminalOverlay < Formula
  desc "Zero-dependency floating desktop environment status overlay for Terminal.app"
  homepage "https://github.com/TrigrD3/terminal-overlay"
  url "https://github.com/TrigrD3/terminal-overlay.git",
      revision: "8f8935803b54523c7e6802216386e6ab70d59435"
  version "1.0.0"
  license "MIT"

  def install
    # Compile from Swift source
    system "swiftc", "terminal_overlay.swift", "-o", "terminal-overlay"
    
    # Install binary into /opt/homebrew/bin/terminal-overlay
    bin.install "terminal-overlay"

    # Install default GIFs directory into share/terminal-overlay
    pkgshare.install "gifs"
  end

  def caveats
    <<~EOS
      To run terminal-overlay:
        terminal-overlay start
      
      To configure context matches and env GIFs:
        terminal-overlay tui
        
      The configuration will be stored locally in config.json.
    EOS
  end

  test do
    assert_match "Terminal Overlay CLI", shell_output("#{bin}/terminal-overlay status", 0)
  end
end
