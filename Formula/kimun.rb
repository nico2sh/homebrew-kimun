class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.7.3/kimun-0.7.3-macos-arm64.tar.gz"
      sha256 "7d8d8d210e930ccf655a89672f1dc3fe2bfcc8b40f897138118f46cf73b7eb0a"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.7.3/kimun-0.7.3-macos-x64.tar.gz"
      sha256 "58e7c89b81bdb724b5c75b920ed8bffcdbe5369c9c01f90b8c6f62ac36192ef4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.7.3/kimun-0.7.3-linux-x64.tar.gz"
      sha256 "eefbfa28633baaa55feb8c57b1942e18c9b7692b502d59b350edd6244ff2cc96"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
