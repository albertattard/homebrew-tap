class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.17/sw-v0.1.17-aarch64-apple-darwin.tar.gz"
      sha256 "b34e62655c2d0b81ca4f21728400b1e0c66556a435191067c08b0ef34eeef2c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.17/sw-v0.1.17-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6e7b85ef664c6aafa39685d8dbd05053e697bdbd0a42a2f00273b8e8c0ce1f51"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
