class MacMemoryCleaner < Formula
  desc "CLI tool to find and kill unused background processes on macOS"
  homepage "https://github.com/jiahualihuanahuan/oxpecker"
  
  # The URL to the tar.gz you uploaded to your GitHub Releases
  url "https://github.com/jiahualihuanahuan/oxpecker/releases/download/v1.0.0/oxpecker.tar.gz"
  
  # The SHA-256 hash you generated in the previous steps
  sha256 "b196e2345cf9d07a79576619673d6f215f6dce5582ae2ec68a4aaa8f5ccbb3ba"
  
  version "1.0.0"

  def install
    # Installs 'mac_cleaner' from the tarball but renames the command to 'mac_memory_cleaner'
    bin.install "oxpecker"
  end

  test do
    # A simple test to ensure the tool runs
    system "#{bin}/oxpecker", "--help"
  end
end
