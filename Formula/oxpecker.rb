class Oxpecker < Formula
  desc "Find and optionally terminate high-memory, low-CPU background processes on macOS"
  homepage "https://github.com/jiahualihuanahuan/oxpecker"
  url "https://github.com/jiahualihuanahuan/oxpecker/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  sha256 "567ba62e74271c4ad8f3fce8d5a915e1aa91a19a30a7e2841a74bda797e1710a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/oxpecker --help")
  end
end
