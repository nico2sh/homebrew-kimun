class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.20.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.20.1/kimun-0.20.1-macos-arm64.tar.gz"
      sha256 "6e6f83350f93567d67b70f184a01d443d744f11e2de86accae353b3a943b0e01"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.20.1/kimun-0.20.1-macos-x64.tar.gz"
      sha256 "346686fef3c71bc27a09519e9b99cb028811c44fbd91d6cf4987c3e73c886675"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.20.1/kimun-0.20.1-linux-arm64.tar.gz"
      sha256 "b08215079b983795f3955c31e208c03c43503a13f73ee2d392959b710dcd29da"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.20.1/kimun-0.20.1-linux-x64.tar.gz"
      sha256 "cd7f8c4eb17c0dbde8381c820d2ed62aff505ffcfe296f3e887ccad2a18b941b"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
