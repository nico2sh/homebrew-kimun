class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.7.0/kimun-0.7.0-macos-arm64.tar.gz"
      sha256 "5ba59ec64d0e602abf82a21b4482d6712baf8f12f269790d6b965c4c88387bef"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.7.0/kimun-0.7.0-macos-x64.tar.gz"
      sha256 "44fa1410a7e22ba1e04af1ad8efdfc6700bd589ca54ac05589dd6f62d9666b5a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.7.0/kimun-0.7.0-linux-x64.tar.gz"
      sha256 "8c9a92dbd3a793f1b7a90f8da71497ccca1e522b82609dc6ac6a8d7e70f11686"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
