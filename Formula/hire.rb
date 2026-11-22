# hire - task runner for any-language taskfiles (Lua native, Python/Node/C++ via the __hire__ contract) with background jobs built in (bstart/watch/stop).
# Formula template; CI renders 2.0.3 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/hire

class Hire < Formula
  desc "Task runner for any-language taskfiles (Lua native, Python/Node/C++ via contract) with background jobs built in"
  homepage "https://github.com/XiaTian-AC/hire"
  license "MIT"
  version "2.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.3/hire-darwin-arm64.tar.gz"
      sha256 "b7659450408e19339cb7bd06357e51c530a28c32e8c772c9163fbc84249c1893"
    else
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.3/hire-darwin-amd64.tar.gz"
      sha256 "bebfc63195225aa356cc6791d101d37411af067a43576364b078dd5f45ee69e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.3/hire-linux-arm64.tar.gz"
      sha256 "0a21f064213fb4150a2c49bc3d8fced4505ca386a8fc0550e762e2708303bbe3"
    else
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.3/hire-linux-amd64.tar.gz"
      sha256 "e1d35375cc061c6ffc2b6748c1f8c1308b97c8eac9950e402be0fa6ae2bdc564"
    end
  end

  def install
    bin.install "hire"
  end

  test do
    system "#{bin}/hire", "version"
  end
end
