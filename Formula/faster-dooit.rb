# faster-dooit — a vim-style TUI todo manager.
# Formula template; CI renders 0.4.2 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/faster-dooit

class FasterDooit < Formula
  desc "A vim-style terminal todo manager written in Go. Unaffiliated with the dooit project; AI-assisted, hobby project."
  homepage "https://github.com/XiaTian-AC/faster-dooit"
  license "MIT"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.2/faster-dooit-darwin-arm64.tar.gz"
      sha256 "f9167584ecd9aaef6f766d0eea1dde2fb719dfe58e7b61183e4f6d58c5403215"
    else
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.2/faster-dooit-darwin-amd64.tar.gz"
      sha256 "f33d9e72f6755a7742b0763e883016cbbc57bbb7845adb96e71757303fd5689e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.2/faster-dooit-linux-arm64.tar.gz"
      sha256 "40689f5e107d570c3ff407767a49c216f96e90ef9df75e76e8e38af2894e058a"
    else
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.4.2/faster-dooit-linux-amd64.tar.gz"
      sha256 "16bc9145f39d0ab02f0e6915997b21040493bba5efe731f6eb0f44c2221466b8"
    end
  end

  def install
    bin.install "fdooit"
  end

  test do
    system "#{bin}/fdooit", "--version"
  end
end
