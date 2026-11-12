class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.24.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.12/kimun-0.24.12-macos-arm64.tar.gz"
      sha256 "78fb0e7c253894e02392ef14467aa207baf12b6c2006e022f5f2bfa4fb0c6ed3"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.12/kimun-0.24.12-macos-x64.tar.gz"
      sha256 "908c8dbe68812a6d9adb5b06cd6194bc07472ac6033586d3e27db6d97b2b1b39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.12/kimun-0.24.12-linux-arm64.tar.gz"
      sha256 "27cf7e42d537401b4f4e51881753fbaf2b78f4db32e80d4330b30457c1a2044e"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.12/kimun-0.24.12-linux-x64.tar.gz"
      sha256 "0ae1fa281199ecbb65b054c0474ee91c0a863dd3502c59d1d8e42e4ecda38257"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
