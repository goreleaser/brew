# This file was generated by GoReleaser. DO NOT EDIT.
class Goreleaser < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "0.144.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.144.0/goreleaser_Darwin_x86_64.tar.gz"
    sha256 "9118b0ff6bf084f155096092b345c2706ce6b6e0c2a41b699c3320578551b5d6"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.144.0/goreleaser_Linux_x86_64.tar.gz"
      sha256 "e3303f7418260c1756a06f7d95ee1c26b7a3c8dd9e1cef856414b294873ea964"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goreleaser/goreleaser/releases/download/v0.144.0/goreleaser_Linux_arm64.tar.gz"
        sha256 "062a3b5d37ea79ae70662bdb63007df41a4e6e7b717caa937cd91f15602a0bc0"
      else
        url "https://github.com/goreleaser/goreleaser/releases/download/v0.144.0/goreleaser_Linux_armv6.tar.gz"
        sha256 "b3fa5a9d4dbfc1e961a7de359825eaacda59b8f32dd3f10ec4e83e2e5f735d6b"
      end
    end
  end
  
  depends_on "go"

  def install
    bin.install "goreleaser"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
