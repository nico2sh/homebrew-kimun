class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.11.0/kimun-0.11.0-macos-arm64.tar.gz"
      sha256 "8f6e666467a8541b4d2d6f4367f4f5e118c28df76e5ea51d724e5719e115035c"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.11.0/kimun-0.11.0-macos-x64.tar.gz"
      sha256 "541a408f55a271daa9188c6bfcdb9a92e6c665d7c26dc33a2af5f82b0d893ed6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.11.0/kimun-0.11.0-linux-x64.tar.gz"
      sha256 "708a2fc6420b1bcd241d5bcee176b0148f816559b1a160977b3f4463e698fe3f"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
