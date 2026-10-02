class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.24.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.5/kimun-0.24.5-macos-arm64.tar.gz"
      sha256 "61353bb6aa922e093f7b919a31a6b2dabc2866d900cd6f2f7b88a008b4580298"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.5/kimun-0.24.5-macos-x64.tar.gz"
      sha256 "39ea5ae7cb87b4654ccc574de9563fd11342749be437549d5cf202739fceb1ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.5/kimun-0.24.5-linux-arm64.tar.gz"
      sha256 "b93cbd0b4877847e68f6100e17bbd3bd0f9d8157a528c3ee01c55c8c065450d8"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.5/kimun-0.24.5-linux-x64.tar.gz"
      sha256 "fbd9f2e8f467f62292891724913e669af20837e995bad851b261964dcf167d08"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
