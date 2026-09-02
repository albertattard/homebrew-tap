class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.4/sw-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "0cf0850492a1c7d551f88837c7f142e97941019745df6a1649ab5655d65893bc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.4/sw-v0.1.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "91c83a30cd897dc182c6b16ecdb06e1741e8ae2d71a0cd4b01911a268abfc2da"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
