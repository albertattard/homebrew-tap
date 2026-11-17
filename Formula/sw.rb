class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.14/sw-v0.1.14-aarch64-apple-darwin.tar.gz"
      sha256 "d6e60ce2e6d4b9964bf8bc4daa6cbd3f5253c17f5225b3930d1ede2d53d0d182"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.14/sw-v0.1.14-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c6c24bacf5f592e77d8a1565c594552ee758d30e465409b3cb593300fb80993"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
