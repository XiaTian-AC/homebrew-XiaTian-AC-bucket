# hire - task runner for any-language taskfiles (Lua native, Python/Node/C++ via the __hire__ contract) with background jobs built in (bstart/watch/stop).
# Formula template; CI renders 2.0.0 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/hire

class Hire < Formula
  desc "Task runner for any-language taskfiles (Lua native, Python/Node/C++ via contract) with background jobs built in"
  homepage "https://github.com/XiaTian-AC/hire"
  license "MIT"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.0/hire-darwin-arm64.tar.gz"
      sha256 "ead79b20638a3cb3fc1bbbedfb0c5d9c437f34dc82166ff1782fccab7f96d80f"
    else
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.0/hire-darwin-amd64.tar.gz"
      sha256 "aa9fa443cde166234b48cba54624c4b9ede0a3161099c25de97cc57629840ff0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.0/hire-linux-arm64.tar.gz"
      sha256 "7a8d6a5dd40022fb7647ca77ade7e7f2a34687e3fcecfa8b53260497c4f2524a"
    else
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.0/hire-linux-amd64.tar.gz"
      sha256 "b1c59641d76ac770286886428e954c0cbff58dfd9ba251ab232cb52f1b43b81b"
    end
  end

  def install
    bin.install "hire"
  end

  test do
    system "#{bin}/hire", "version"
  end
end
