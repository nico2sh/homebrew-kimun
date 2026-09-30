class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.24.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.4/kimun-0.24.4-macos-arm64.tar.gz"
      sha256 "c1566b3a40547956c4bc4825fd29be0f6bfec9ffc5c7e7fca9fe601d73c4e5be"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.4/kimun-0.24.4-macos-x64.tar.gz"
      sha256 "ad32d899997523a23480e9af9a21038bb6ff1f12d9229acf46efb41b51fb72ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.4/kimun-0.24.4-linux-arm64.tar.gz"
      sha256 "26f3482a3971b9d5b5fe2d1ddd1b0f13df92b83a319261431c6db1b817d380d3"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.4/kimun-0.24.4-linux-x64.tar.gz"
      sha256 "c8b01c09e4688383a824f2190f9d32538f0a6120fd4c0613e51b3f493da0b999"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
