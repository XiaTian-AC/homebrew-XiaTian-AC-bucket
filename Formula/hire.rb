# hire - task runner for any-language taskfiles (Lua native, Python/Node/C++ via the __hire__ contract) with background jobs built in (bstart/watch/stop).
# Formula template; CI renders 2.2.0 + per-platform sha256 placeholders.
# https://github.com/XiaTian-AC/hire

class Hire < Formula
  desc "Task runner for any-language taskfiles (Lua native, Python/Node/C++ via contract) with background jobs built in"
  homepage "https://github.com/XiaTian-AC/hire"
  license "MIT"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.2.0/hire-darwin-arm64.tar.gz"
      sha256 "50c6ea7349828753c29dfb71a3091164c8062f25c8676c597dd9f564485ceacd"
    else
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.2.0/hire-darwin-amd64.tar.gz"
      sha256 "9231f667e381987afb96002f88b70e84671fc0d1a228f6547f9ea0add46fd061"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.2.0/hire-linux-arm64.tar.gz"
      sha256 "0967859d103ce0b943922fe2de76babf6ef0c183d319f1a6efd431c2d8d3b365"
    else
      url "https://github.com/XiaTian-AC/hire/releases/download/v2.2.0/hire-linux-amd64.tar.gz"
      sha256 "862a4e559993f26647cf03e628626ebbbe2254cd23d0aec5c31a7beb2fd73618"
    end
  end

  def install
    bin.install "hire"
  end

  test do
    system "#{bin}/hire", "version"
  end
end
