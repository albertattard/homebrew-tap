class Sw < Formula
  desc "Executable documentation runbook CLI"
  homepage "https://github.com/albertattard/sw"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/albertattard/sw/releases/download/v0.1.2/sw-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "127508639488cbc1836959430d0d4506c5f3fd403f937291dfb842941bb10faa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/albertattard/sw/releases/download/v0.1.2/sw-v0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a468ce07c484222a68430d19d313a9698d1823cd87a32a7ffdbd57f70773243b"
    end
  end

  def install
    bin.install "sw"
  end

  test do
    system bin/"sw", "version"
  end
end
