class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.9/sw-v0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "ca95f9ddae4e5bc5fe4003a308f33ddc965bf1d27d35753e85abd3df0e0e1e79"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.9/sw-v0.1.9-x86_64-unknown-linux-musl.tar.gz"
      sha256 "757256fcec9e0dee167bd1509e6239f5dbe2ce478e82a9080765f83c9fae8bfd"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
