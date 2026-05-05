class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.8.0/kimun-0.8.0-macos-arm64.tar.gz"
      sha256 "c972985bc79b640caaee21adbaa3761f4f0a04e8f016d91de914f5170c1a8688"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.8.0/kimun-0.8.0-macos-x64.tar.gz"
      sha256 "08c76753a8544e091cf75604084e2be70676c1731826b659fa454b9b10e1a3f1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.8.0/kimun-0.8.0-linux-x64.tar.gz"
      sha256 "f635604754dc84f993e09af380a20f705e3ad16a616432edfeef91c9da31db46"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
