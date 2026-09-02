class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.3/sw-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "1bb299885bec17e36dc0848a8bed18705074172e91baa8e050b09d71031919a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.3/sw-v0.1.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bfacec2916c7135c2a1ea9e9e0d9d607452e7482efa25bf07f13ccafc4409223"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
