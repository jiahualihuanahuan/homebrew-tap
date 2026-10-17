class Oxpecker < Formula
  desc "Find and optionally terminate high-memory, low-CPU background processes on macOS"
  homepage "https://github.com/jiahualihuanahuan/oxpecker"
  url "https://github.com/jiahualihuanahuan/oxpecker/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  sha256 "d35854425dee685f449276ce8bdd6321d7b660873a4c35ac8095e215d5af5d8d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/oxpecker --help")
  end
end
