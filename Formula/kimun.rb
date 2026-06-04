class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.13.0/kimun-0.13.0-macos-arm64.tar.gz"
      sha256 "1306b99027212d6c141142a0c17455ae19426b7358d922eca58541e88cb0b3c5"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.13.0/kimun-0.13.0-macos-x64.tar.gz"
      sha256 "58530364595bc3643e2be5d73dd51cc83799e7101f7e182b3ceb97639c24e71e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.13.0/kimun-0.13.0-linux-x64.tar.gz"
      sha256 "a478c48ff981f03a8de0dc5670c41c4e058d6b0905b191ffd24375d8ba892d4c"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
