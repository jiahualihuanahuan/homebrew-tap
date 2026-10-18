class Oxpecker < Formula
  desc "Find and optionally terminate high-memory, low-CPU background processes on macOS"
  homepage "https://github.com/jiahualihuanahuan/oxpecker"
  url "https://github.com/jiahualihuanahuan/oxpecker/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "345a7ebb539938279520eafc785fdc9e86d485ed24bfc92280af451810e6bda9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/oxpecker --help")
  end
end
