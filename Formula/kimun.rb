class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/v0.3.4/kimun-0.3.4-macos-arm64.tar.gz"
      sha256 "09bb73b78178ec2a2a5007d3a7786e03773c564807cbae98f1060179cd41e8b8"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/v0.3.4/kimun-0.3.4-macos-x64.tar.gz"
      sha256 "efcb7769fbca2acbb28092b7c2374ab06b60d4c5ef7ba2ddeb701997eb389212"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/v0.3.4/kimun-0.3.4-linux-x64.tar.gz"
      sha256 "f89a92f28320062871793bd741fe258f555df5fb7677d30caf05312d3d5ff95c"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
