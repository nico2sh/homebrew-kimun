class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.24.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.3/kimun-0.24.3-macos-arm64.tar.gz"
      sha256 "258b3149a02769553f6ee80c3d03a327a28ebddcc597bb3335a08d7314509486"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.3/kimun-0.24.3-macos-x64.tar.gz"
      sha256 "4cdcfb091235862b87c4f326c5eddb3bf27b28cd7620ada7f116cb0dfae2246a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.3/kimun-0.24.3-linux-arm64.tar.gz"
      sha256 "312a5416f55d0d2b125f7b2ec393bfccdb76ca9607a5260490e2cec55e894efd"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.3/kimun-0.24.3-linux-x64.tar.gz"
      sha256 "479049648c118240074e59116d72a5324b1be2b870520376246ba9ae8f9f6e97"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
