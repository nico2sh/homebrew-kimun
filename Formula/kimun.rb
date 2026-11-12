class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.24.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.11/kimun-0.24.11-macos-arm64.tar.gz"
      sha256 "658fb83bc56f8993caa911b456e0a4bdb040fe734364b5e0a2be505a85c690cb"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.11/kimun-0.24.11-macos-x64.tar.gz"
      sha256 "cc77501200cb79955a81a2235fcbd4d2e59a9f41bc4352aae42e722af767a029"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.11/kimun-0.24.11-linux-arm64.tar.gz"
      sha256 "a65c2e4fcf381c3f194840e1a8955d4dbb32c7fa129c11556204a70a761dfefb"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.11/kimun-0.24.11-linux-x64.tar.gz"
      sha256 "1483568ba5a0908ad12ce57b58c268282664bce8ebb739acf44525fed6bfdebb"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
