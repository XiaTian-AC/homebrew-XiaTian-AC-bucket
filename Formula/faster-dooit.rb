# faster-dooit — a vim-style TUI todo manager.
# Formula template; CI renders 0.3.1 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/faster-dooit

class FasterDooit < Formula
  desc "A vim-style terminal todo manager written in Go. Unaffiliated with the dooit project; AI-assisted, hobby project."
  homepage "https://github.com/XiaTian-AC/faster-dooit"
  license "MIT"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.3.1/faster-dooit-darwin-arm64.tar.gz"
      sha256 "1f3630f64e142797ce5c3afb6c95bdd6db03735d448b9672fc539c620f544560"
    else
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.3.1/faster-dooit-darwin-amd64.tar.gz"
      sha256 "5095ce51ab2757a4f0c524c11d1451ede3f1aebdad2295fd990019b089e3aca1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.3.1/faster-dooit-linux-arm64.tar.gz"
      sha256 "dbf7eb5ef1561abadb8006d9fc56ff517c4d75b40d291f3369587d0866b174ec"
    else
      url "https://github.com/XiaTian-AC/faster-dooit/releases/download/v0.3.1/faster-dooit-linux-amd64.tar.gz"
      sha256 "f2baa6d13b0bfeba0a835e5b2c70250de5d70d04a4da56bb86228602849bc09c"
    end
  end

  def install
    bin.install "fdooit"
  end

  test do
    system "#{bin}/fdooit", "--version"
  end
end
