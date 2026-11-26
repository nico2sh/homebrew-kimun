class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.25.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.6/kimun-0.25.6-macos-arm64.tar.gz"
      sha256 "58735a9a2924ecf0bddea21f31594a35ddd284aedcbc85e05b090f03df76fd66"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.6/kimun-0.25.6-macos-x64.tar.gz"
      sha256 "8266d4f294a6247950b5e6d34b78b6a464571fec8e69b0d437e3deebda8dba10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.6/kimun-0.25.6-linux-arm64.tar.gz"
      sha256 "b17c3957d2e074e4a247132c019f3c767d395bf3844ea4e8266a73fa13a7b544"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.6/kimun-0.25.6-linux-x64.tar.gz"
      sha256 "5566afa379aa79df6ab4490426884644c6b4e6775f7c243366dda3caa7573ce3"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
