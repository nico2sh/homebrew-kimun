class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.11.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.11.3/kimun-0.11.3-macos-arm64.tar.gz"
      sha256 "7c18efa57bca82d8324836e690eb0533052ce50f67ee9841181eefb93305796b"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.11.3/kimun-0.11.3-macos-x64.tar.gz"
      sha256 "1f4a67c30f9b3e4ecb373bc72ff74e18ff9f68dee10aab5e8c218aa1d8bc2219"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.11.3/kimun-0.11.3-linux-x64.tar.gz"
      sha256 "b83e72108df4b19970b49553cfcad598123acacaf628111113fd04b4961fb35b"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
