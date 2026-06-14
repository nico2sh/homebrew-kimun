class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.0/kimun-0.19.0-macos-arm64.tar.gz"
      sha256 "e9c906c54e58ec49bf26712fdb59b3fb894bb0e37b57688d4a5697b2023da21f"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.0/kimun-0.19.0-macos-x64.tar.gz"
      sha256 "5e97d2fbe63a3d826f8e1988d93d94a213839ef72e62c4cbfbe449f2274ac959"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.0/kimun-0.19.0-linux-arm64.tar.gz"
      sha256 "117e78167909fcc925387253fc9db93d28c117bf84c0b23086a506b284627323"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.19.0/kimun-0.19.0-linux-x64.tar.gz"
      sha256 "d472926c0a174cd31cf3b40857125a21a7a02904593ea90311364d195e3bc164"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
