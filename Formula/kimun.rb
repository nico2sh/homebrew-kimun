class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.16.1/kimun-0.16.1-macos-arm64.tar.gz"
      sha256 "17ac1e43f0c78f74152c15857e0726e163a17a811fcb7d541228766d91f70527"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.16.1/kimun-0.16.1-macos-x64.tar.gz"
      sha256 "80ee1a43f5144952f4b83ffe973a5af606b00f73d5e40d0d44cfaf33f89403df"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.16.1/kimun-0.16.1-linux-x64.tar.gz"
      sha256 "d7e6ae5339f63ed8359a89d14ade0e5ff08ecef9f96bf4a582dee10b2b6320ba"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
