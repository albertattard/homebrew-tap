class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.1/sw-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "a94523e790253ee86d7b9632a80b3444204281ee89d2ddabaab6819a0e034d2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.1/sw-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5b8c0da9902e74c1054e37e214b8c12fba038e80b7c1d01ae319e983b672a458"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
