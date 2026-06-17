class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.19.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.4/kimun-0.19.4-macos-arm64.tar.gz"
      sha256 "54841a23e21eaa5dbf056132ce5c2d1c3e1a0eef39e136b18de3dceedd49a912"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.4/kimun-0.19.4-macos-x64.tar.gz"
      sha256 "ffa5750bdc5e861f265f13824d9868f45bddf25f7acc7cfdb9677f1a00c1772e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.4/kimun-0.19.4-linux-arm64.tar.gz"
      sha256 "7c60fb7c397c9fc3879c29f5506267e1712b21dbbfb0a059bb410ef79882b5dd"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.4/kimun-0.19.4-linux-x64.tar.gz"
      sha256 "f9854c8f49dd00499188d2dcadac23600dda6cd9f322fc45ddee01eab091af51"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
