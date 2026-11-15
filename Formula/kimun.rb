class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.25.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.1/kimun-0.25.1-macos-arm64.tar.gz"
      sha256 "c60a783a78c20374683750a7e351e0f5d019a28cb44c91701b551d2b2c219512"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.1/kimun-0.25.1-macos-x64.tar.gz"
      sha256 "3d28cad1e623d6f94625116e2f7e56594bc9048fc8fe46e6297c5d5252668d94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.1/kimun-0.25.1-linux-arm64.tar.gz"
      sha256 "ba9d13dae2f062776080368caba2551469216ae6b98f1bb1319a13cf1246ccf1"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.1/kimun-0.25.1-linux-x64.tar.gz"
      sha256 "26996047fb6d5b3d8cecf8f217f937bcf69b7bd97ef90b6e32baf77350f3d0cf"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
