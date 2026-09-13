class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.24.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.1/kimun-0.24.1-macos-arm64.tar.gz"
      sha256 "8be33e19bcdb6e2d9c3ba2c62c120f7e7b8da461bab1f2859c75ec99da89c942"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.1/kimun-0.24.1-macos-x64.tar.gz"
      sha256 "6bee7257a43debddfbfb77d6b9e6187108152f210c09b265e842d65040b5af9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.1/kimun-0.24.1-linux-arm64.tar.gz"
      sha256 "fed47c03c801a89cff0ef38093707e20edfdbdef1554a921561fc63c490acee5"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.1/kimun-0.24.1-linux-x64.tar.gz"
      sha256 "b97d864d816cd659ed60b8df774b6729a586bda31b5dcf1b8cb97c73a6f1e373"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
