class TerminalOverlay < Formula
  desc "Zero-dependency floating desktop environment status overlay for Terminal.app"
  homepage "https://github.com/TrigrD3/terminal-overlay"
  # Update URL and sha256 when you publish a release version on GitHub
  url "https://github.com/TrigrD3/terminal-overlay/archive/587abe6d3c6dc52fd1ddeb307e0d02f0f277c428.tar.gz"
  sha256 "9d6d3de4b77124a67f3d1fa2bff8e08318ed28585583017fb9b6ee3b962eb161"
  version "1.0.0"
  license "MIT"

  def install
    # Compile from Swift source
    system "swiftc", "terminal_overlay.swift", "-o", "terminal_overlay"
    
    # Install binary into /opt/homebrew/bin/terminal_overlay
    bin.install "terminal_overlay"

    # Install default GIFs directory into share/terminal-overlay
    pkgshare.install "gifs"
  end

  def caveats
    <<~EOS
      To run terminal-overlay:
        terminal_overlay start
      
      To configure context matches and env GIFs:
        terminal_overlay tui
        
      The configuration will be stored locally in config.json.
    EOS
  end

  test do
    assert_match "Terminal Overlay CLI", shell_output("#{bin}/terminal_overlay status", 0)
  end
end
