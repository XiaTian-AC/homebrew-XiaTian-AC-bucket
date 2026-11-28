# hire - task runner for any-language taskfiles (Lua native, Python/Node/C++ via the __hire__ contract) with background jobs built in (bstart/watch/stop).
# Formula template; CI renders 2.3.0 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/hire

class Hire < Formula
  desc "Task runner for any-language taskfiles (Lua native, Python/Node/C++ via contract) with background jobs built in"
  homepage "https://github.com/XiaTian-AC/hire"
  license "MIT"
  version "2.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.3.0/hire-darwin-arm64.tar.gz"
      sha256 "ef756882bd53a92713815c31766556d46eebb8ab92290dd5b3c58a7267631415"
    else
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.3.0/hire-darwin-amd64.tar.gz"
      sha256 "f8bb50e9f268c28e1ad04aac35b207df577d95fcb4966210431c523d2b435b67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.3.0/hire-linux-arm64.tar.gz"
      sha256 "2d8bb80cce54646c2b723d46cc7579fb57dd3b04f3287b3c03d6a06efd143560"
    else
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.3.0/hire-linux-amd64.tar.gz"
      sha256 "a4eeaf39bcbb45a41f058235e88c0388f88009838d608f165f74290c16d2bed7"
    end
  end

  def install
    bin.install "hire"
  end

  test do
    system "#{bin}/hire", "version"
  end
end
