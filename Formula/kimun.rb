class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.11.1/kimun-0.11.1-macos-arm64.tar.gz"
      sha256 "f6a40680be1cede05b89fdbf9fd33c317584134833c2f8b586a375fe35b66cdf"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.11.1/kimun-0.11.1-macos-x64.tar.gz"
      sha256 "6db9b7b70b0760d3e1bf8852e75be1245397752de78eaab80639b142dff02415"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.11.1/kimun-0.11.1-linux-x64.tar.gz"
      sha256 "e397aef93955293f9309121bfb8b3b3af17b33ec5ba0dba49831a32acf1a9a97"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
