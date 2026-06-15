class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.19.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.1/kimun-0.19.1-macos-arm64.tar.gz"
      sha256 "8b4dd2708704f244b4a0ae58d7f9412b766825b2444b80de9dc567b0cac82674"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.1/kimun-0.19.1-macos-x64.tar.gz"
      sha256 "26ddb9318bc40c96c3e5ac6f8bda95d937cb11e8a53d81702169c90eb10b0897"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.1/kimun-0.19.1-linux-arm64.tar.gz"
      sha256 "9f7739b989714c4e74255087637978a4fddae96f6d196993891db3908ef69e12"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.1/kimun-0.19.1-linux-x64.tar.gz"
      sha256 "120c9c5110891e4cbc941eecea613c411ae6373408e0dc41a3a98882ae273190"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
