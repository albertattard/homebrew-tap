class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.6/sw-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "f02bfc8fef808894d95925506de1b560d17d5e7557d2a6055a259ac9996e9d99"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.6/sw-v0.1.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f032d8d9580e581605de9605df1d55ed0e7600a0b94b3f0cb95a38eaa3a3bf9f"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
