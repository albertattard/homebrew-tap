class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.0/sw-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "570020ee77d271073c118bfcee2464b182e31756e67bed70b66e08a9e42648ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.0/sw-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c0f93ea302a36f3cf4449326394c1a268a806e6c301713387d7fe8d63b995464"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
