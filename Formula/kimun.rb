class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.10.0/kimun-0.10.0-macos-arm64.tar.gz"
      sha256 "58f8a205cb66ad41e6300dbae5411c6c9427740684d040cfb0385d634a7b4bea"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.10.0/kimun-0.10.0-macos-x64.tar.gz"
      sha256 "a4c5ede50f472875643d9efa5ca6abb58439c92c382c3d754aff76ecd679871b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.10.0/kimun-0.10.0-linux-x64.tar.gz"
      sha256 "b48581df46385deeae640f65a392968891bdea561b0683b4d888e9ed0c45d7f8"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
