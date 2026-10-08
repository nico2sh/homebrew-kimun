class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.24.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.6/kimun-0.24.6-macos-arm64.tar.gz"
      sha256 "58f2e4bb0746f12b17abfc411b67c96a4ad3a2764e0af4d7e120865a8d067a50"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.6/kimun-0.24.6-macos-x64.tar.gz"
      sha256 "4525a98a9c85dc4c976fafbc566a4ebd17d396360a16545c35850b32746ff5d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.6/kimun-0.24.6-linux-arm64.tar.gz"
      sha256 "b8391d0c1475116fd8fc1a5d6b8a2af5f4ef770c7a28379e8f91ad9bb18860af"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.6/kimun-0.24.6-linux-x64.tar.gz"
      sha256 "e2ad28e7618787386deea94481c84ff8fdf66509577edcd6ecbca528671141e7"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
