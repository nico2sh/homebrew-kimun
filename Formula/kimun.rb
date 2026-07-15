class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.20.0/kimun-0.20.0-macos-arm64.tar.gz"
      sha256 "52f78f0abb0cf7ebfdc3120b91eb74b378791a19ec7498cf0da814eaf3c6d395"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.20.0/kimun-0.20.0-macos-x64.tar.gz"
      sha256 "51e915165c599ff5bee76cfd156de6b0b2829dfd9347f04e4a23d62c0f846432"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.20.0/kimun-0.20.0-linux-arm64.tar.gz"
      sha256 "3859dcbe8334a2ea61dfeead30b8d5acdfdcdd5a02ce9aa0ea2cbc3c890dbe6c"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.20.0/kimun-0.20.0-linux-x64.tar.gz"
      sha256 "95e5218cf84e5e983feeff2627bd28840ccb049f2b12ec6925f04ad9c41b8634"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
