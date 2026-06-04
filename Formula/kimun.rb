class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.14.0/kimun-0.14.0-macos-arm64.tar.gz"
      sha256 "8294d3ea793b01db886af5af2a9cbaabca6597d509ebe0fc04d5c1b0027a9288"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.14.0/kimun-0.14.0-macos-x64.tar.gz"
      sha256 "5249010588c87700c33eb6419b4ff879792dbee7edfa6e91deca673433fbf499"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.14.0/kimun-0.14.0-linux-x64.tar.gz"
      sha256 "a51abf1d7fc89a97c810fb3af4ec27491feb7d1b51a13add2e9971da5f45809d"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
