# hire - task runner for any-language taskfiles (Lua native, Python/Node/C++ via the __hire__ contract) with background jobs built in (bstart/watch/stop).
# Formula template; CI renders 2.0.2 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/hire

class Hire < Formula
  desc "Task runner for any-language taskfiles (Lua native, Python/Node/C++ via contract) with background jobs built in"
  homepage "https://github.com/XiaTian-AC/hire"
  license "MIT"
  version "2.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.2/hire-darwin-arm64.tar.gz"
      sha256 "b8a156f39293b46a983b6d0878e88393ce2fd42e8d649130b3b62d3c4b6e46b3"
    else
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.2/hire-darwin-amd64.tar.gz"
      sha256 "9316401ec1750df2a9fd02dae1f84ca27cafdb91a60dc5f4f52b58f4f3facdee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.2/hire-linux-arm64.tar.gz"
      sha256 "f7ffd589f8d8932223e684b28faf922875cfa019a8e9c0d9ab8966fe2883b722"
    else
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.2/hire-linux-amd64.tar.gz"
      sha256 "a01a9b677982258f59c16b8b3d89d68b2e478464caed96ca091f53410262c28d"
    end
  end

  def install
    bin.install "hire"
  end

  test do
    system "#{bin}/hire", "version"
  end
end
