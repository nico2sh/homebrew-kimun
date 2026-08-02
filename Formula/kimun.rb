class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.22.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.22.1/kimun-0.22.1-macos-arm64.tar.gz"
      sha256 "8a3dd905d2c1e52420de1d972f0b808abde2a7bf10a9c8a2dcc0b4e93a1f161a"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.22.1/kimun-0.22.1-macos-x64.tar.gz"
      sha256 "509114ac81f1c5be42578a8b352935b10c940c42a1e0f3b04a1a636c625f732b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.22.1/kimun-0.22.1-linux-arm64.tar.gz"
      sha256 "b8e9d0a8d309a21d8e4e8a17c060388d804cafacdb6a26e25e1061c22c9804f3"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.22.1/kimun-0.22.1-linux-x64.tar.gz"
      sha256 "9d696a2e4fb6f9fef5c47508b5ac176f3ee5562bae0249c5d8c3394f77180a9d"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
