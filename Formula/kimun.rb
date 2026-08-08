class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.23.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.2/kimun-0.23.2-macos-arm64.tar.gz"
      sha256 "f02052eda09c625147af17ac9bced962c814336c9c811a93d85e47874800bec8"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.2/kimun-0.23.2-macos-x64.tar.gz"
      sha256 "a19d866d8311d926b4e4612d414cfa78f8f3fe5d1fdecdc5535b062a056c4112"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.2/kimun-0.23.2-linux-arm64.tar.gz"
      sha256 "0bc20354ba3c22661855b89f20cd2c9a23ec0c6d3983b6a9cb4a3f51136f1add"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.2/kimun-0.23.2-linux-x64.tar.gz"
      sha256 "e9040c99d0357e4344c709b2b77985d80a59b63bdfe4399659c4a8c06916ff1c"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
