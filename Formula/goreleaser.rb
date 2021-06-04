# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goreleaser < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "0.168.2"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.168.2/goreleaser_Darwin_x86_64.tar.gz"
      sha256 "6d6aa7bc057cff50788a14704cff6437d099701ebb91aab7f3b10a8b2fbd5e4c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.168.2/goreleaser_Darwin_arm64.tar.gz"
      sha256 "f13050683335356c48569fcf9f168326f12a24a9738d66edaf175300c282a617"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.168.2/goreleaser_Linux_x86_64.tar.gz"
      sha256 "9308b28a4b0ad95f9037920519bd5fbda6e8e775032ebc09250e496de6aa0bc9"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.168.2/goreleaser_Linux_armv6.tar.gz"
      sha256 "7b37cfd35b0659227f07042c3675b6fdc071df710c897c4ad0dc962f8902a279"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.168.2/goreleaser_Linux_arm64.tar.gz"
      sha256 "b5c99794148a65306a56c4a4f135b9caa462d4950381564fa7b5bd5b9566155d"
    end
  end

  depends_on "go" => :optional
  depends_on "git"

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
