class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/v0.3.6/kimun-0.3.6-macos-arm64.tar.gz"
      sha256 "aacd6f2ac140fbf72c3029d6ec9755a4e9c3c7401a8efadf45a67f768dc3049a"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/v0.3.6/kimun-0.3.6-macos-x64.tar.gz"
      sha256 "77464f7f8c152ccdb4f9b8f123ae451130d9cb89f343eb16a7a6ed36a11e1778"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/v0.3.6/kimun-0.3.6-linux-x64.tar.gz"
      sha256 "26bb0a4dab2cf81ae64a10f34f650f396b425950ccd04959067ec3c5f88ddea2"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
