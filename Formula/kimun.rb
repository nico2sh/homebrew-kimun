class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.22.0/kimun-0.22.0-macos-arm64.tar.gz"
      sha256 "74aeb54983f877cb707a65a8e81d553d27db8ec959179c7d0c96f8377cd75b51"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.22.0/kimun-0.22.0-macos-x64.tar.gz"
      sha256 "104a3f02845cd2fd7c321f6ef044d75b85478c902e0ff628622ce133b88c08e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.22.0/kimun-0.22.0-linux-arm64.tar.gz"
      sha256 "f6b89a2385f617850a46378be7bb299f65c55e7d966e6b47294eac18aa504a17"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.22.0/kimun-0.22.0-linux-x64.tar.gz"
      sha256 "5d29a4664eeb374e9db4e3bec2cb3ce45aec25b6beb499d433fabeb4d160626d"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
