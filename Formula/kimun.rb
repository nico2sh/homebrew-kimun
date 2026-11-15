class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.25.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.2/kimun-0.25.2-macos-arm64.tar.gz"
      sha256 "1272618aad5c13c2a0fc207b06732f47b878f7129e583f44d970511c45ec8c63"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.2/kimun-0.25.2-macos-x64.tar.gz"
      sha256 "bdde34929487c027308d5407367df4d78820e6667d572554ea507686870d2d5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.2/kimun-0.25.2-linux-arm64.tar.gz"
      sha256 "b3b7857f49bdacfef2f931808e1fe0a5a1d7d9734077fd6b33e0137d934fe2ae"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.25.2/kimun-0.25.2-linux-x64.tar.gz"
      sha256 "7068edbb0b0d47943f818b2eec501f8d05aaa2be30807b2a6e8d7661c4afefe0"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
