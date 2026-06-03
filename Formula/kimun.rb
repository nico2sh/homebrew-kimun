class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.12.0/kimun-0.12.0-macos-arm64.tar.gz"
      sha256 "c0e9f69d73f54fe8fa605d16bf7994da1ff952b1c23d082af3f8f43ba5fd3a06"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.12.0/kimun-0.12.0-macos-x64.tar.gz"
      sha256 "25544b76246ffa4b929e5f6d9cba859abefc9980f77bf78ffdcaf5513189a9af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.12.0/kimun-0.12.0-linux-x64.tar.gz"
      sha256 "5318a5429162b2f9a16a9b55d9c346f5cda32f1ac271f0c090aa9eb7f60a6ed5"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
