class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.10/sw-v0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "d1d6560f55ed4fa7bb7ff82afbf32534a3e12410be405283ffbe1894d921798a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.10/sw-v0.1.10-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6b9b98a0d983faea1c07102a6174107ac7771b466590b8a9b443093fbc9622e1"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
