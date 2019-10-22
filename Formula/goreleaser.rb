# This file was generated by GoReleaser. DO NOT EDIT.
class Goreleaser < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "0.120.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.120.3/goreleaser_Darwin_x86_64.tar.gz"
    sha256 "ec2e2a51d9d872606375b28e51f69679f386b91661f61b9afaf371f4b0abd49b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.120.3/goreleaser_Linux_x86_64.tar.gz"
      sha256 "73a25dd5be2c3c6b07f7d2997ec39086e8f58f239bc5c03843d371f5fff4507b"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goreleaser/goreleaser/releases/download/v0.120.3/goreleaser_Linux_arm64.tar.gz"
        sha256 "00366c31e046a14897dbf7cd523735914db3b04c54d3756e6208d5d1cd4204c0"
      else
        url "https://github.com/goreleaser/goreleaser/releases/download/v0.120.3/goreleaser_Linux_armv6.tar.gz"
        sha256 "985b6d07f1d1a6da84ad067914cc7518f0d8195424105d75d759b86a3895c440"
      end
    end
  end

  def install
    bin.install "goreleaser"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
