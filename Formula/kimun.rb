class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.23.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.1/kimun-0.23.1-macos-arm64.tar.gz"
      sha256 "92ecd4e9d27ffb25e718145dc119d195c3daa94ffb5688dc94eefb137444c885"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.1/kimun-0.23.1-macos-x64.tar.gz"
      sha256 "f172c3183c7f226c398d78d9d8e00fe8872520542724ab2aec6a5db201503633"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.1/kimun-0.23.1-linux-arm64.tar.gz"
      sha256 "c8b01bd50d59d6bea5c694317dcfc32933941d1251e440ad10f8a84811af4131"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.1/kimun-0.23.1-linux-x64.tar.gz"
      sha256 "cce47ab1c1d66d59d001657a0f998a6768adbad7ac3dfcd617c2b3e7734f9ce5"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
