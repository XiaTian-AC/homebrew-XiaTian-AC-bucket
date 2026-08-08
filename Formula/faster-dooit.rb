# faster-dooit — a vim-style TUI todo manager.
# Formula template; CI renders 0.4.1 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/faster-dooit

class FasterDooit < Formula
  desc "A vim-style terminal todo manager written in Go. Unaffiliated with the dooit project; AI-assisted, hobby project."
  homepage "https://github.com/XiaTian-AC/faster-dooit"
  license "MIT"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.1/faster-dooit-darwin-arm64.tar.gz"
      sha256 "b64512a34ba287e2c0a76a1a0fb7ff585d9878cd91a2a75448b1133a664f2525"
    else
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.1/faster-dooit-darwin-amd64.tar.gz"
      sha256 "859e9d0b9e71f6cc27b4c5bebb8b794eb3973a3c54b0ddb9819291286a472fee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.1/faster-dooit-linux-arm64.tar.gz"
      sha256 "7e09fc4ee8f37716da97c334948951505ac52c9bba953f318df70ae2ae99a7b2"
    else
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.1/faster-dooit-linux-amd64.tar.gz"
      sha256 "589ea9942d94b16df3cf2f22380003891140c70756e1d70ef38ed90241ee1326"
    end
  end

  def install
    bin.install "fdooit"
  end

  test do
    system "#{bin}/fdooit", "--version"
  end
end
