# faster-dooit — a vim-style TUI todo manager.
# Formula template; CI renders 0.5.0 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/faster-dooit

class FasterDooit < Formula
  desc "A vim-style terminal todo manager written in Go. Unaffiliated with the dooit project; AI-assisted, hobby project."
  homepage "https://github.com/XiaTian-AC/faster-dooit"
  license "MIT"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.5.0/faster-dooit-darwin-arm64.tar.gz"
      sha256 "717cf3ad7683a07b7729b5ffbd1c224289e19bf1fbf97e2c612d7340a2b1f96a"
    else
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.5.0/faster-dooit-darwin-amd64.tar.gz"
      sha256 "01a0eaaa87f70c8ae3beae2eb48065f0b828569be0bc9f0d72215bf04009d612"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.5.0/faster-dooit-linux-arm64.tar.gz"
      sha256 "5a3b9f68299d9a61dfd8d8839e182766ffe8ad162395c59c877bfaa45109c87b"
    else
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.5.0/faster-dooit-linux-amd64.tar.gz"
      sha256 "a7e7630c05b5f2535d42d875469cae1f01606148fa07b3dc2d7c8e753053252d"
    end
  end

  def install
    bin.install "fdooit"
  end

  test do
    system "#{bin}/fdooit", "--version"
  end
end
