class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.11/sw-v0.1.11-aarch64-apple-darwin.tar.gz"
      sha256 "16cac1b5434e1d90f89b6043b3c9c9f371d8bb7ff5ee06548655de01fa360e1a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.11/sw-v0.1.11-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c16d684c6d0984451a6c0cda2c593edd184a4aa0b44330d516d3f3c9ace7e36"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
