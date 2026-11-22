# hire - task runner for any-language taskfiles (Lua native, Python/Node/C++ via the __hire__ contract) with background jobs built in (bstart/watch/stop).
# Formula template; CI renders 2.0.1 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/hire

class Hire < Formula
  desc "Task runner for any-language taskfiles (Lua native, Python/Node/C++ via contract) with background jobs built in"
  homepage "https://github.com/XiaTian-AC/hire"
  license "MIT"
  version "2.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.1/hire-darwin-arm64.tar.gz"
      sha256 "d43eeb9b70827290c341e1071b4c17bc34657c65e424151cf5f5f6c49d5f7339"
    else
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.1/hire-darwin-amd64.tar.gz"
      sha256 "7f69c8b95136bb20b5b36dd8711ce339b1c824ce3809738631be2432379aa3e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.1/hire-linux-arm64.tar.gz"
      sha256 "fc21e7e09978df29e99b74732301d7455d29cb7d7b43560a45a59c2c8d00f5af"
    else
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.0.1/hire-linux-amd64.tar.gz"
      sha256 "17a804a8e519af69c963e539535c36230a731f1e02a92323c1574b8089cace21"
    end
  end

  def install
    bin.install "hire"
  end

  test do
    system "#{bin}/hire", "version"
  end
end
