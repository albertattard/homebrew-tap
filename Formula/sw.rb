class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.16/sw-v0.1.16-aarch64-apple-darwin.tar.gz"
      sha256 "d63fa790aae097645cf5992ad3466bbf707308dae0e024da4666b97b8d363203"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.16/sw-v0.1.16-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e4c111dee8f087fc20330e8b16f3d8e011844016603fc5c8fb5d66cf03706486"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
