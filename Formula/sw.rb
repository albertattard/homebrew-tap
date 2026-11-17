class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.13/sw-v0.1.13-aarch64-apple-darwin.tar.gz"
      sha256 "560785b706b020f0b4b632d67db4f5b1f7652fb8c6a68558c4f8b2fd5b4680b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.13/sw-v0.1.13-x86_64-unknown-linux-musl.tar.gz"
      sha256 "103a4c42772c58cd4502e8d7391a64f72cf0b292f0988802ad0762bb52660db1"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
