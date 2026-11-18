class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.25.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.3/kimun-0.25.3-macos-arm64.tar.gz"
      sha256 "5dce470fe7e991908628d0ab222c19464ece39a1fe573fcfec3d5e1416195eae"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.3/kimun-0.25.3-macos-x64.tar.gz"
      sha256 "2bfcf23c1d3a95c568ea22b80391bc642c5e133c7f09ce90fc9796a7fabeefaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.3/kimun-0.25.3-linux-arm64.tar.gz"
      sha256 "fc618ddac72f726b38888ffeb7efba81d039c53db7085d57e8290d971fc7ce1f"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.3/kimun-0.25.3-linux-x64.tar.gz"
      sha256 "43dc8b7e794ebb2cf9d9ae7ef99b5318cecc7483c370dc60e08c454871a71e60"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
