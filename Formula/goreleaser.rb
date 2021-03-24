# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goreleaser < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "0.161.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.161.0/goreleaser_Darwin_x86_64.tar.gz"
    sha256 "17943faa2d14c31de4da6aff2462b85aad90b280f680d867049fc4d767bd2af1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.161.0/goreleaser_Darwin_arm64.tar.gz"
    sha256 "2e4d0612919b750ac182a2e133ff387e1fb3f751b5c636a7852f3e9a09daeeb7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.161.0/goreleaser_Linux_x86_64.tar.gz"
    sha256 "1d303b4ec2bb2e41c651ddd3a0f8a1f1c24ba76af38e62ebc0ddb87ee5841b27"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.161.0/goreleaser_Linux_armv6.tar.gz"
    sha256 "7b33f5357ab521561bef920b7892cdaaaed93a968495fa8c0215dd171027faf8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.161.0/goreleaser_Linux_arm64.tar.gz"
    sha256 "6f9961a860291bbddfa365f66a13cf58ed8097f217316f8590fb6e0960046f7e"
  end

  depends_on "go"

  def install
    bin.install "goreleaser"
    bash_completion.install "completions/goreleaser.bash" => "goreleaser"
    zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
    fish_completion.install "completions/goreleaser.fish"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
