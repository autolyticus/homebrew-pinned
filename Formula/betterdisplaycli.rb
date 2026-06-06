class Betterdisplaycli < Formula
  desc "CLI for BetterDisplay (Pre-compiled binary distribution)"
  homepage "https://github.com/waydabber/betterdisplaycli"

  url "https://github.com/autolyticus/homebrew-pinned/releases/download/betterdisplaycli/betterdisplaycli-macos.tar.gz"
  sha256 "c7d5cf6d6eb097a23ecae87003b97a2a6a1503991a7cc34265fcb231f6083a9e"
  version "1.1.0"
  license "MIT"

  def install
    quiet_system "xattr", "-d", "com.apple.quarantine", "betterdisplaycli"
    # Install the pre-compiled binary into Homebrew's bin path
    bin.install "betterdisplaycli"
  end

  test do
    system "#{bin}/betterdisplaycli", "version"
  end
end
