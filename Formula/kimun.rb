class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.24.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.8/kimun-0.24.8-macos-arm64.tar.gz"
      sha256 "a5b99305d498447b223343f4970f237b7b8189b9cd662b955fe341f58451de8c"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.8/kimun-0.24.8-macos-x64.tar.gz"
      sha256 "de7b8f162cc14f1bb2e8250763e3cf6a1c5e98c71f6518927a5e940d29819451"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.8/kimun-0.24.8-linux-arm64.tar.gz"
      sha256 "265f1d8b07e4da1a4810afe0f1a86e848687b7cf1c91e05803654a0b56ffa36f"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.8/kimun-0.24.8-linux-x64.tar.gz"
      sha256 "ff6b775711cff7ef1984fcc48996e40da9671fb90bd558afdb8e4bacd00addc7"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
