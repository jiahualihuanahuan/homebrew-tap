class MacMemoryCleaner < Formula
  desc "CLI tool to find and kill unused background processes on macOS"
  homepage "https://github.com/jiahualihuanahuan/mac-memory-cleaner"
  
  # The URL to the tar.gz you uploaded to your GitHub Releases
  url "https://github.com/jiahualihuanahuan/mac-memory-cleaner/releases/download/v1.0.0/mac_memory_cleaner.tar.gz"
  
  # The SHA-256 hash you generated in the previous steps
  sha256 "3417e2cbcbf800880eb103c05cecc768a18f1f8592c440ee377e35198487834b"
  
  version "1.0.0"

  def install
    # Installs 'mac_cleaner' from the tarball but renames the command to 'mac_memory_cleaner'
    bin.install "mac_memory_cleaner"
  end

  test do
    # A simple test to ensure the tool runs
    system "#{bin}/mac_memory_cleaner", "--help"
  end
end
