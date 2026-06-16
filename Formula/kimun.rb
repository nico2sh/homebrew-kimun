class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.19.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.2/kimun-0.19.2-macos-arm64.tar.gz"
      sha256 "00e78908fe0250490389a9753ef41d4ac3a481c40fbdbfb28c2b5347cac83cb5"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.2/kimun-0.19.2-macos-x64.tar.gz"
      sha256 "81bf23d6fc53de956a27862337122a660a516e830203f712180a0dd79894aeff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.2/kimun-0.19.2-linux-arm64.tar.gz"
      sha256 "a93e60644bffafe1517a3419219d78ae3f3842497793987b9398599113ff1c83"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.2/kimun-0.19.2-linux-x64.tar.gz"
      sha256 "b9f4fc0dd7406b6f416340860cdf5a75b80d16d3effd041d890d6fcb7a48c1c5"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
