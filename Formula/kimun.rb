class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.7.2/kimun-0.7.2-macos-arm64.tar.gz"
      sha256 "1da854d99384c69316070a27b8c6bd9626aa0b2515fbfb09877a405994c1ec4f"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.7.2/kimun-0.7.2-macos-x64.tar.gz"
      sha256 "30734c996c3a2575bd35ab211a79941f46b9a6cd9f8e077956b937d9b2a1ee86"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.7.2/kimun-0.7.2-linux-x64.tar.gz"
      sha256 "e103a0d8b7156a0ac63898792c6e5af3b4afa1ecd90bbb84eb22829f031f3939"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
