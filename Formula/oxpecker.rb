class Oxpecker < Formula
  desc "Find and optionally terminate high-memory, low-CPU background processes on macOS"
  homepage "https://github.com/jiahualihuanahuan/oxpecker"
  url "https://github.com/jiahualihuanahuan/oxpecker/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  sha256 "a67ceca2ea95e0fdfe17e2d4a2db4cdb19c1a90d0404f722dc5e9e79bd7016cb"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/oxpecker --help")
  end
end
