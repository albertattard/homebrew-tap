class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.8/sw-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "3babd4008479a01c08b9024c2317b505afcad2104e3776c12a80af618b56a89a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.8/sw-v0.1.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "406c82a16e5050b7342b277d59db72f46730c4e27fa91c60df63122de2895bb4"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
