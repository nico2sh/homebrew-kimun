class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.24.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.10/kimun-0.24.10-macos-arm64.tar.gz"
      sha256 "8e3e1d0398c5001c984c50c8b548b63642c123e74281c4907c393b60274bc64a"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.10/kimun-0.24.10-macos-x64.tar.gz"
      sha256 "64cc20d78a2a5560e1111f4ddf1fc78afa776603f6703c3dfd7e8b4e99b6d54e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.10/kimun-0.24.10-linux-arm64.tar.gz"
      sha256 "068d836e995c48088b82e341205eea36e3133023f345dc736157aaafa294441c"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.10/kimun-0.24.10-linux-x64.tar.gz"
      sha256 "8d77daeb9d14f5ba7b36b074c63547836fb812c0bf2223cbeba062275aca6087"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
