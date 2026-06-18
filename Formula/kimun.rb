class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.19.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.5/kimun-0.19.5-macos-arm64.tar.gz"
      sha256 "4436a01bcddc9e40b1b3cbbdea9003fac363a222dbfc360affdf7134ddcfc877"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.5/kimun-0.19.5-macos-x64.tar.gz"
      sha256 "f2818ee68201bfef815fe750ea796797f8667891adff064a6aff8918b3776833"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.5/kimun-0.19.5-linux-arm64.tar.gz"
      sha256 "333294de1183babfc92c51def0b7dfdf9dcdacd6f5c8e7360f63ff6ebb1a68ab"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.5/kimun-0.19.5-linux-x64.tar.gz"
      sha256 "b698226a3a1ee7a6eb0338d89a287792b38016aa2954f40fd8f6f415b126e1a7"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
