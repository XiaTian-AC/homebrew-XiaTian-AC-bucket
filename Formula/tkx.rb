# tkx 是一個現代任務運行器，支持 Lua Taskfile + 後台任務管理（bstart/watch/stop）。
# Formula template; CI renders 0.2.0 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/tkx

class Tkx < Formula
  desc "Modern task runner with Lua taskfiles and built-in background task management"
  homepage "https://github.com/XiaTian-AC/tkx"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/tkx/releases/download/v0.2.0/tkx-darwin-arm64.tar.gz"
      sha256 "b5e979b8ebad200a1de7b950bd8b9b01a8e5ab2c746e8032f04c8c2583ea1a2e"
    else
      url "https://github.com/XiaTian-AC/tkx/releases/download/v0.2.0/tkx-darwin-amd64.tar.gz"
      sha256 "f5f6b18dbfcb1fa0617fa35bc6656049e91f08b1f606d7e80fec941ab1a9f1fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/tkx/releases/download/v0.2.0/tkx-linux-arm64.tar.gz"
      sha256 "d212680510b2ecd21411dfe4f3e8f7fe2892fca95abdd6751dba0a6494e8308d"
    else
      url "https://github.com/XiaTian-AC/tkx/releases/download/v0.2.0/tkx-linux-amd64.tar.gz"
      sha256 "af39613cf41ee8788de4e8724e43a6a2e7e05348ca115bdf96991047e6f29e7e"
    end
  end

  def install
    bin.install "tkx"
  end

  test do
    system "#{bin}/tkx", "version"
  end
end
