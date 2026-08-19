class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.23.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.3/kimun-0.23.3-macos-arm64.tar.gz"
      sha256 "ff732c1f55d1f3d644c0ea2fe9ade0c18a1d02b04cfee1e3b8ed7656a8f4d5ee"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.3/kimun-0.23.3-macos-x64.tar.gz"
      sha256 "76fbf9aeea3dcfe82602aba00db1166b22d75d9c791ef1696b876868ef1f9e14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.3/kimun-0.23.3-linux-arm64.tar.gz"
      sha256 "742a6c43318c7e1600dcb6d2444a719640a63001292618fbafd4a857e483a93a"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.23.3/kimun-0.23.3-linux-x64.tar.gz"
      sha256 "4f9aae94a6ea9fecc7440d07c8f2e73a89d16afca0a5b2560f0a32b288712384"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
