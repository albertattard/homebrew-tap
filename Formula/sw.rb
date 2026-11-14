class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.12/sw-v0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "89b936d38e4aaeb72b60bb711b911c616e9aa47df5468ef2228e8f49b87a0395"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.12/sw-v0.1.12-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b2020deaf74c3cebd65ef7726ab2260b0a8183ea7a87d078b60d488415c2554e"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
