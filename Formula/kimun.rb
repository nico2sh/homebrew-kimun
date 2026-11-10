class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.24.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.9/kimun-0.24.9-macos-arm64.tar.gz"
      sha256 "2f5328bdc657669df3129c746f6419d966d47ad1e2f5b273c17cbc371ba47324"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.9/kimun-0.24.9-macos-x64.tar.gz"
      sha256 "0699d6e99266fe0c57802c01bca32759bfe7056880fc96b6e2a2948fa267c6e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.9/kimun-0.24.9-linux-arm64.tar.gz"
      sha256 "f14b285afae401dcbfbd6c0d8d6a6720b71cc8cfa5f4f64647c6782d2bd7762a"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.9/kimun-0.24.9-linux-x64.tar.gz"
      sha256 "a5f6b6dca97830c932aefabd27167e437d0139247586399178c058ec79b143e1"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
