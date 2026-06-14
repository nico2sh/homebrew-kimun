class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.18.0/kimun-0.18.0-macos-arm64.tar.gz"
      sha256 "5474d545f389411118be0089084e57ea131b738b046951e6956fb5ffb27a839c"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.18.0/kimun-0.18.0-macos-x64.tar.gz"
      sha256 "a6279c7ece344ee74a1a4b2762475937ce8f8c176d7e897e0fbad8fc600a6232"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.18.0/kimun-0.18.0-linux-x64.tar.gz"
      sha256 "657ba27568dc4fb76b0f0b5b20b5d199140a69f78932340e9f104e7257d57593"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
