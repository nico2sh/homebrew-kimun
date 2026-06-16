class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.19.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.3/kimun-0.19.3-macos-arm64.tar.gz"
      sha256 "7cdc2381cbcbf5750f2d3bc5a09a15c76ccae23867790a15b0e90f5ff2530c32"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.3/kimun-0.19.3-macos-x64.tar.gz"
      sha256 "b6db7274941be857bd8296c94346801a12e4bd5a286c129f21d1c02ddd347ea8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.3/kimun-0.19.3-linux-arm64.tar.gz"
      sha256 "a202d49b569228961d376239b2eb651446bbe9f9d263805c68f1d89433e7d5eb"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.3/kimun-0.19.3-linux-x64.tar.gz"
      sha256 "8ec7b831462d63290024388a142d882d35ed68459dd6795600214d13273d5bc9"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
