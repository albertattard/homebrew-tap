class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.15/sw-v0.1.15-aarch64-apple-darwin.tar.gz"
      sha256 "ccbfd012f98cd4e373d837f58ef312904d252c1878c2da0f7de1c6787d390da6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.15/sw-v0.1.15-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66d0b2605e22dfb5dae925e4e54228efadc2d5e1070df635819bcf9cbfd3ab64"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
