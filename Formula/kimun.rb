class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.9.0/kimun-0.9.0-macos-arm64.tar.gz"
      sha256 "3fdc519c6c1d430cfe2876b8d66f2fe7a008631cc9778327f7c0a64cfc2a00ee"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.9.0/kimun-0.9.0-macos-x64.tar.gz"
      sha256 "f5bc470477c2a19e882df89204783a501f9de27d618a3b0c604493922ca489c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.9.0/kimun-0.9.0-linux-x64.tar.gz"
      sha256 "5c7196b70be2720d844f182dd3ae409c06bb08150baf3d34eee4538227f0704c"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
