class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.25.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.5/kimun-0.25.5-macos-arm64.tar.gz"
      sha256 "e0b41510444075b0362f991b03cb06c32a13322649518ee443af4c246e80ce87"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.5/kimun-0.25.5-macos-x64.tar.gz"
      sha256 "cb7fb0ad26c4b049825ceb15c5c9960a30af1c078ae11ec27fad389956c63150"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.5/kimun-0.25.5-linux-arm64.tar.gz"
      sha256 "b722354cff5180c30791bb91fc78fa852a80a36a8e069912004d0389251d26ad"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.5/kimun-0.25.5-linux-x64.tar.gz"
      sha256 "2dc8ce2d772f8992d36aa15b8a661ddd6112b746b5082aa4eba3821e760c83f6"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
