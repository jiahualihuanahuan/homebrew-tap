class Oxpecker < Formula
  desc "Find and optionally terminate high-memory, low-CPU background processes on macOS"
  homepage "https://github.com/jiahualihuanahuan/oxpecker"
  url "https://github.com/jiahualihuanahuan/oxpecker/releases/download/v0.1.2/oxpecker-macos.tar.gz"
  sha256 "453e65b8e221bb737278b0ab2e87f91596a5415b45439c345d80f124e27205cb"
  version "0.1.2"
  license "MIT"

  def install
    bin.install "oxpecker"
  end

  test do
    system "#{bin}/oxpecker", "--help"
  end
end
