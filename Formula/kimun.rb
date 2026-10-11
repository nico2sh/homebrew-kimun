class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.24.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.7/kimun-0.24.7-macos-arm64.tar.gz"
      sha256 "130fe76c10d29ae1405466648352675b6f55f03c91f1248e376d1cdb0dfde9ec"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.7/kimun-0.24.7-macos-x64.tar.gz"
      sha256 "a9a3872e72a4c77cc453b09e207e88a5961e10e67fcc7a061266fa60ee0783c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.7/kimun-0.24.7-linux-arm64.tar.gz"
      sha256 "6de49ec36349d4229de24e5abf78d0cfcd8cca7c8b79abf4399d7eb683af6dcc"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.7/kimun-0.24.7-linux-x64.tar.gz"
      sha256 "f8a566f08d1cad036638c96778e686173718051aaddf109c2f30a01aaab92ca1"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
