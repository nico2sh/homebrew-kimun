class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.21.0/kimun-0.21.0-macos-arm64.tar.gz"
      sha256 "21402b96d68664bf5a003cbe37e30ff2beb19443c468535fb08ca64fba9d75c1"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.21.0/kimun-0.21.0-macos-x64.tar.gz"
      sha256 "b0351a8a243806b4b5069480d6c2ae979dd060226e1d31e821482d2d08013af1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.21.0/kimun-0.21.0-linux-arm64.tar.gz"
      sha256 "1a6e74c11888970d2c295d89ebc5e778c1b23d84fe8c1aaf87b2539abda85ade"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.21.0/kimun-0.21.0-linux-x64.tar.gz"
      sha256 "4162aa5049da8f9755271e6f0e5d89b9897fad3e4da88169f0bd16b4635ca3f0"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
