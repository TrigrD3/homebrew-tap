class TerminalOverlay < Formula
  desc "Zero-dependency floating desktop environment status overlay for Terminal.app"
  homepage "https://github.com/TrigrD3/terminal-overlay"
  # Update URL and sha256 when you publish a release version on GitHub
  url "https://github.com/TrigrD3/terminal-overlay/archive/772573a985d8868dfd6eb09b8b0e8b3504142f1a.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
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
