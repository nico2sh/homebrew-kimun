class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.0/kimun-0.23.0-macos-arm64.tar.gz"
      sha256 "4322391a924d5cae3fb8a81569df6579cf638133d582c9383e95f28022c60162"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.0/kimun-0.23.0-macos-x64.tar.gz"
      sha256 "0dafc27901a78661723ef0fab02d90a2c0a37b199883ee73a972451e3cdf4b77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.0/kimun-0.23.0-linux-arm64.tar.gz"
      sha256 "8bf4d66a583a8b85e9435e1f8e29c85a601cd5b49b11ea843050d2dc42102e35"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.0/kimun-0.23.0-linux-x64.tar.gz"
      sha256 "5c8915cf69450bf8e9b274a2eb3fe36cdb29413d5c0036b4236a6b967452ee7b"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
