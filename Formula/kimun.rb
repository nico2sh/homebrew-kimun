class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.11.2/kimun-0.11.2-macos-arm64.tar.gz"
      sha256 "feb4ba75d2cefd9f7e59b47f934c6d0c6120f055ef65a031806f5996c88432b4"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.11.2/kimun-0.11.2-macos-x64.tar.gz"
      sha256 "3728405bd94a0049dd5e092fb1293afa56e41f83103d9fb1dede89203c227031"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.11.2/kimun-0.11.2-linux-x64.tar.gz"
      sha256 "e013752e799e340f5389c34c41aae3769660d8a1fe6a3d218229c2e28cd2055b"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
