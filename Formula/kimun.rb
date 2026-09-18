class Kimun < Formula
  desc "Terminal-based notes app focused on simplicity and powerful search"
  homepage "https://github.com/nico2sh/kimun"
  version "0.24.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.2/kimun-0.24.2-macos-arm64.tar.gz"
      sha256 "91d1e65946834bc0c91d67bf22be14b75158fc8f086dbe252bacb33377e59c5e"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.2/kimun-0.24.2-macos-x64.tar.gz"
      sha256 "13fc742ea4273668ebc04d7840c3b8cf440425dfdc3b99fd4c25123987200a05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.2/kimun-0.24.2-linux-arm64.tar.gz"
      sha256 "6d41c078ea2a32af7beabdcfb63627bfd92438290861541d7df4fe37a663ccf6"
    end

    on_intel do
      url "https://github.com/nico2sh/kimun/releases/download/kimun-notes-v0.24.2/kimun-0.24.2-linux-x64.tar.gz"
      sha256 "aaa7ca65965243bdbf9f42897efd0acbfa512d8f0668e0608d675a2a22cf72aa"
    end
  end

  def install
    bin.install "kimun"
  end

  test do
    system "#{bin}/kimun", "--version"
  end
end
