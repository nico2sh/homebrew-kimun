class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.17.0/kimun-0.17.0-macos-arm64.tar.gz"
      sha256 "ed2d150c52528fd6ccc6721bc7b2de5dca7b0bf1e594c666c3a5a70dea9f2d6e"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.17.0/kimun-0.17.0-macos-x64.tar.gz"
      sha256 "30c170a3426841a439a32d42d0c8fe6d5a38d2df678fcdd0865d5cc2053d226f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.17.0/kimun-0.17.0-linux-x64.tar.gz"
      sha256 "c3eada7168dd2663c05988aba496f8b56596d24037dbd7087c3d902f1af06086"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
