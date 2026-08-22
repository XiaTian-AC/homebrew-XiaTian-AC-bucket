# tkx 是一個現代任務運行器，支持 Lua Taskfile + 後台任務管理（bstart/watch/stop）。
# Formula template; CI renders 0.1.0 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/tkx

class Tkx < Formula
  desc "Modern task runner with Lua taskfiles and built-in background task management"
  homepage "https://github.com/XiaTian-AC/tkx"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/tkx/releases/download/v0.1.0/tkx-darwin-arm64.tar.gz"
      sha256 "ac1b8789c5fd729c6a944c736d84029a72f78f958d805e8e943fe87f5d1e6874"
    else
      url "https://github.com/XiaTian-AC/tkx/releases/download/v0.1.0/tkx-darwin-amd64.tar.gz"
      sha256 "52770178d5f7395c93721ee956c279fa8f1c2b805c9e0f94685e20675c0a87e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/tkx/releases/download/v0.1.0/tkx-linux-arm64.tar.gz"
      sha256 "054977eae2bf854c71bfb747be08babb7cd019d5d2926f45a8d1b2ec679fa257"
    else
      url "https://github.com/XiaTian-AC/tkx/releases/download/v0.1.0/tkx-linux-amd64.tar.gz"
      sha256 "5e763f9f97a7f065042771ee427d3921e1e04bfb608ad5e8dd6ea0b7a7e139b9"
    end
  end

  def install
    bin.install "tkx"
  end

  test do
    system "#{bin}/tkx", "version"
  end
end
