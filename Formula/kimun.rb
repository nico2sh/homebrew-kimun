class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.25.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.4/kimun-0.25.4-macos-arm64.tar.gz"
      sha256 "e75392495bc535a67ce2458f657db71466b1788a1a14ec4c600cd48cc276283e"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.4/kimun-0.25.4-macos-x64.tar.gz"
      sha256 "a439ac3e9c40a3705060d167d97822db9f8b58ae9134ce3dee2e03e952c97e22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.4/kimun-0.25.4-linux-arm64.tar.gz"
      sha256 "acbe7040aa8471c2db4431d838c344f0a7fe8fc5329b790841af961dde5975ca"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.4/kimun-0.25.4-linux-x64.tar.gz"
      sha256 "262733df65ed43474b6079c979899115c6a1d13a6a6c23deb4646f4f98698806"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
