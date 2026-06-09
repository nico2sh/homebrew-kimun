class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.16.0/kimun-0.16.0-macos-arm64.tar.gz"
      sha256 "c1bd6b04c0cc56d6fb8c761e641e158f94e8527a9b0858318db4c5b3f4ed16bf"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.16.0/kimun-0.16.0-macos-x64.tar.gz"
      sha256 "bf6f0f9c805df6ac29ca63160138f6f211c2c7c3ff888e4c43872b6c95bace4f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.16.0/kimun-0.16.0-linux-x64.tar.gz"
      sha256 "a64cef9e288bda82fdf25e7f7b5297abe05dfdfe8e6d08e1606aede431c1d7fd"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
