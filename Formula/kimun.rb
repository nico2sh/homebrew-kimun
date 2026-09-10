class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.0/kimun-0.24.0-macos-arm64.tar.gz"
      sha256 "c6e6c94ef2b759f6f3646561dab433f01b374f580d15f7e9e003a4d9dbeb3c8f"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.0/kimun-0.24.0-macos-x64.tar.gz"
      sha256 "23aa3e67ff894c8ac36540f7003e9ffb22f17f7e6299e2eda1b89ab1519fe773"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.0/kimun-0.24.0-linux-arm64.tar.gz"
      sha256 "dec7ffd0b72e969ad9d38e286ae2b91632248b233fe21cfb280116abcc91984d"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.0/kimun-0.24.0-linux-x64.tar.gz"
      sha256 "d45faceba88f2f1fe1902a14084899c5cf8ae09994a22d0a2601795d70a71ebd"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
