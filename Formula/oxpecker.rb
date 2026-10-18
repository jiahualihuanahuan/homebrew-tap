class Oxpecker < Formula
  desc "Find and optionally terminate high-memory, low-CPU background processes on macOS"
  homepage "https://github.com/jiahualihuanahuan/oxpecker"
  url "https://github.com/jiahualihuanahuan/oxpecker/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  sha256 "e99dedb7917b9a5220790b248aaf43e4f5adf02ef318ee83a5f969d873dc2808"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/oxpecker --help")
  end
end
