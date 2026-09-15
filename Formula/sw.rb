class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.7/sw-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "34a0d224967f3e910025fcce9e6c9df249261e77e45aff59b7f9fe64f29bf81b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.7/sw-v0.1.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9ceaff0419ed1606a505dfe613286f2f1b2238397df3b5a2c563b722cd7b5e76"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
