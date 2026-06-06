class Betterdisplaycli < Formula
  desc "CLI for BetterDisplay (Pre-compiled binary distribution)"
  homepage "https://github.com/waydabber/betterdisplaycli"

  url "https://github.com/autolyticus/homebrew-pinned/releases/download/betterdisplaycli/betterdisplaycli-macos.tar.gz"
  sha256 "c943f391817d53fadb67ad579dd93f03fb922837bed3db45d456882d082d0368"
  version "1.1.0"
  license "MIT"

  def install
    # Install the pre-compiled binary into Homebrew's bin path
    bin.install "#{bin}/betterdisplaycli"
  end

  def post_install
    # Strip the Gatekeeper quarantine attribute so it runs without
    # the "developer cannot be verified" prompt.
    # Using a guard so the install doesn't fail if the attribute isn't present.
    system "xattr", "-d", "com.apple.quarantine", "#{bin}/betterdisplaycli"
  rescue
    # The attribute may not exist; ignore the error so installation succeeds.
    nil
  end

  test do
    system "#{bin}/betterdisplaycli", "version"
  end
end
