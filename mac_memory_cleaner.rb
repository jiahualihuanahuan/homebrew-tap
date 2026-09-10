class MacMemoryCleaner < Formula
  desc "CLI tool to find and kill unused background processes on macOS"
  homepage "https://github.com/jiahualihuanahuan/mac-memory-cleaner"
  
  # The URL to the tar.gz you uploaded to your GitHub Releases
  url "https://github.com/jiahualihuanahuan/mac-memory-cleaner/releases/download/v1.0.0/mac_memory_cleaner.tar.gz"
  
  # The SHA-256 hash you generated in the previous steps
  sha256 "041209f10860b6b3e19bd9f2ff0fd4f6e7113d918779e4264b046a6c8b15ace5"
  
  version "1.0.0"

  def install
    # Installs the binary to Homebrew's bin folder
    bin.install "mac_memory_cleaner"
  end

  test do
    # A simple test to ensure the tool runs
    system "#{bin}/mac_memory_cleaner", "--help"
  end
end
