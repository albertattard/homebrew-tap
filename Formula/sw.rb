class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.5/sw-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "b158aa3165ef55d698b1eac67adb63f158917f0df570f795c0aee900d273e687"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.5/sw-v0.1.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fac2f5130a344382cd8aee7ee81a3fdc45c1b49a62459a5c93e1cf441972bd59"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
