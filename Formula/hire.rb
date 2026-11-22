# hire - task runner for any-language taskfiles (Lua native, Python/Node/C++ via the __hire__ contract) with background jobs built in (bstart/watch/stop).
# Formula template; CI renders 2.1.0 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/hire

class Hire < Formula
  desc "Task runner for any-language taskfiles (Lua native, Python/Node/C++ via contract) with background jobs built in"
  homepage "https://github.com/XiaTian-AC/hire"
  license "MIT"
  version "2.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.1.0/hire-darwin-arm64.tar.gz"
      sha256 "5777261bd64cafbb40f891865379b81274a29a0c9376e3334c5ee817633e466a"
    else
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.1.0/hire-darwin-amd64.tar.gz"
      sha256 "f3f0dc9dc0cdf2d284cab672780f6c76cdce84fa11ea99a2d2f0ff03aba6ea80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.1.0/hire-linux-arm64.tar.gz"
      sha256 "e94b22e00f6bf2fa64ee597aa544230893a11833958bd956af2e321d9ee45ab8"
    else
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.1.0/hire-linux-amd64.tar.gz"
      sha256 "34fea0a6930c831194dfc3ffe3ff0ce03744cca0cf14c56272023c82a10779ca"
    end
  end

  def install
    bin.install "hire"
  end

  test do
    system "#{bin}/hire", "version"
  end
end
