class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.7.1/kimun-0.7.1-macos-arm64.tar.gz"
      sha256 "4ea40aba6ac73b2905b480fab1297b6a9df09afadaeb008118bfbbd26d6008d7"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.7.1/kimun-0.7.1-macos-x64.tar.gz"
      sha256 "7662a9db7017df2cb337184c1b3207dda381f72931215d0289afd27d538a519e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.7.1/kimun-0.7.1-linux-x64.tar.gz"
      sha256 "531f5789cf6f206c43f4a7589f8fc434d5f9fe99d7be0ec04723df85dc3bb117"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
