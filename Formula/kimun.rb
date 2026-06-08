class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.15.0/kimun-0.15.0-macos-arm64.tar.gz"
      sha256 "775b9570ace31350abfe627e860b5904046df123d1cd203fc9496a78c1ef319f"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.15.0/kimun-0.15.0-macos-x64.tar.gz"
      sha256 "402a5ffee7a3e5c11d60676697eab5b0344fbf1fc8951defb2705c6d2d24f7a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.15.0/kimun-0.15.0-linux-x64.tar.gz"
      sha256 "ad300afce29674ff82fa3b8d07b971df8b808ccf0a416803bbf8cd3cef6e032c"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
