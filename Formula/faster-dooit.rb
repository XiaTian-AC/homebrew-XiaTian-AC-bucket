# faster-dooit — a vim-style TUI todo manager.
# Formula template; CI renders 0.5.1 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/faster-dooit

class FasterDooit < Formula
  desc "A vim-style terminal todo manager written in Go. Unaffiliated with the dooit project; AI-assisted, hobby project."
  homepage "https://github.com/XiaTian-AC/faster-dooit"
  license "MIT"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.5.1/faster-dooit-darwin-arm64.tar.gz"
      sha256 "c2e13ab4d470e5a14902c75862e7e35a33d39903c79717cca8b9016bc5653db0"
    else
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.5.1/faster-dooit-darwin-amd64.tar.gz"
      sha256 "42fa594c9ec28b0086cedc43bed34fc98f69c916a974942cec259e4368da8cb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.5.1/faster-dooit-linux-arm64.tar.gz"
      sha256 "f153dd905cd8362384f75f032fd10411b848d76d038e9ff8323efccd49561909"
    else
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.5.1/faster-dooit-linux-amd64.tar.gz"
      sha256 "e5b1b2657d4004ff2086243d510553b1ebbde2c951ce18d87791e33195780c97"
    end
  end

  def install
    bin.install "fdooit"
  end

  test do
    system "#{bin}/fdooit", "--version"
  end
end
