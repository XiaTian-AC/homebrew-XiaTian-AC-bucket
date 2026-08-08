# faster-dooit — a vim-style TUI todo manager.
# Formula template; CI renders 0.4.3 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/faster-dooit

class FasterDooit < Formula
  desc "A vim-style terminal todo manager written in Go. Unaffiliated with the dooit project; AI-assisted, hobby project."
  homepage "https://github.com/XiaTian-AC/faster-dooit"
  license "MIT"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.3/faster-dooit-darwin-arm64.tar.gz"
      sha256 "3baba4381c4d89c4628af6f0b8116f56cf0a83772d872e066e834db0f5616f9d"
    else
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.3/faster-dooit-darwin-amd64.tar.gz"
      sha256 "d7472817c7d17a6ecc4856bebeb5570d13de41cbf42d95e65a4b809f35fdd823"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.3/faster-dooit-linux-arm64.tar.gz"
      sha256 "d03cb1d981f4e70c794dcf345ed803e9161f5e61c34ced404f1fa0083618c3d4"
    else
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.3/faster-dooit-linux-amd64.tar.gz"
      sha256 "fbc858aae472ae2102fef672dceb4c4355a063890475a1e5e9baa653a4a2171d"
    end
  end

  def install
    bin.install "fdooit"
  end

  test do
    system "#{bin}/fdooit", "--version"
  end
end
