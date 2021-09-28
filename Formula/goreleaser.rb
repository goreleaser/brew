# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goreleaser < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "0.180.3"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.180.3/goreleaser_Darwin_x86_64.tar.gz"
      sha256 "9a531fb0872898e1a538de0bb385e218de4229bbeba238affcd1ebdcf0428db6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.180.3/goreleaser_Darwin_arm64.tar.gz"
      sha256 "e706585bcdef50b14085b2649c75f8b85ef1f56a75b7bbefb4477b81b27ad3a6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.180.3/goreleaser_Linux_x86_64.tar.gz"
      sha256 "02c1e73fcbaa041b4bb2b7214a7f683017b1f975c4f8cd3ed17efc7235f2d152"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.180.3/goreleaser_Linux_armv6.tar.gz"
      sha256 "f6841f2b266e530cec668a8dcaf9735f030e937043d559a8ccaecabc4730b619"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.180.3/goreleaser_Linux_arm64.tar.gz"
      sha256 "c74312542b82181b897f86ee1bef974ca54b0138153d6922184c1105481ba194"
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
