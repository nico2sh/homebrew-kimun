class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/v0.3.5/kimun-0.3.5-macos-arm64.tar.gz"
      sha256 "4153827e971def9fd2338381fd74cd67f72254d2eb2c4ac6e47a06ab31f7ad54"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/v0.3.5/kimun-0.3.5-macos-x64.tar.gz"
      sha256 "e789dfaf738beb51d22dcc2731dcd686d95c56ee8a343ccc282b9c4116b1e050"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/v0.3.5/kimun-0.3.5-linux-x64.tar.gz"
      sha256 "1a223430ccf52ec4cedabfa411a56b11b5dbca6920bc4b3cad3af8e86e362d06"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
