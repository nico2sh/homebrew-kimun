class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.6.0/kimun-0.6.0-macos-arm64.tar.gz"
      sha256 "ddef2268ecff971a19ffdb4275d0c7bb503f6e00217dd6960e546abc8330a396"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.6.0/kimun-0.6.0-macos-x64.tar.gz"
      sha256 "209f10d07109ea7468d32b53be3374154e170a71ca52d31b303abf7570abf732"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.6.0/kimun-0.6.0-linux-x64.tar.gz"
      sha256 "7c50b9daf1767e4ca262b2606bc3dcb5338c4bcd0618b9222cd51976c72754fe"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
