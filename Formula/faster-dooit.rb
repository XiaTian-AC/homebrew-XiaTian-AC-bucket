# faster-dooit — a vim-style TUI todo manager.
# Formula template; CI renders 0.4.0 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/faster-dooit

class FasterDooit < Formula
  desc "A vim-style terminal todo manager written in Go. Unaffiliated with the dooit project; AI-assisted, hobby project."
  homepage "https://github.com/XiaTian-AC/faster-dooit"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.0/faster-dooit-darwin-arm64.tar.gz"
      sha256 "af3efbb18a9a8a119435deff803bd8549ba13e6c57b201ccde6a6c714b54fb84"
    else
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.0/faster-dooit-darwin-amd64.tar.gz"
      sha256 "ffb41d939036edb7f9e0cace50754523b665e94f199d0b0a57a6ede0898efb86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.0/faster-dooit-linux-arm64.tar.gz"
      sha256 "cd6bf49eb55b8e6adae5e5405a5e9ed1cc5379b3d7ef07734f69f2468f7f098f"
    else
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.0/faster-dooit-linux-amd64.tar.gz"
      sha256 "3e1951b92e17bd912302e99ead256a4352d16ddf5cdb5c68daae8e5b1c022783"
    end
  end

  def install
    bin.install "fdooit"
  end

  test do
    system "#{bin}/fdooit", "--version"
  end
end
