class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.0/kimun-0.25.0-macos-arm64.tar.gz"
      sha256 "7ffdb1533d59baaa85bf14a17f24ea5b00cf7ca88641f0ecdb5e86fa2e68c4ed"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.0/kimun-0.25.0-macos-x64.tar.gz"
      sha256 "d0f5f0a21593992579799ac1337957c0a6a2c9bf32c83817619f9d8a8b315e4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.0/kimun-0.25.0-linux-arm64.tar.gz"
      sha256 "ea80e7300a63fda58d176eacdc7155ba5c63c9d0bcfe7d5c3438ad827846d4ae"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.0/kimun-0.25.0-linux-x64.tar.gz"
      sha256 "0fd163054a721cf719d813e7a393787a33eabd09bbc447752a307bc5059fb45c"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
