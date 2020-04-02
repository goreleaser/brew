# This file was generated by GoReleaser. DO NOT EDIT.
class Goreleaser < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "0.131.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.131.0/goreleaser_Darwin_x86_64.tar.gz"
    sha256 "218bff384f901789a5417f597e468f1758f018e84b5b0ddfe9bb007ef896c8ce"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.131.0/goreleaser_Linux_x86_64.tar.gz"
      sha256 "3d9bed65ebc441d4669aa26b1fbdba34cf0ac92bd0b959ed85cc5f071e4378f8"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goreleaser/goreleaser/releases/download/v0.131.0/goreleaser_Linux_arm64.tar.gz"
        sha256 "2e761ceda5dace6895fd05480253df279f9a2cd45d53d75cfe6fddc4520cec62"
      else
        url "https://github.com/goreleaser/goreleaser/releases/download/v0.131.0/goreleaser_Linux_armv6.tar.gz"
        sha256 "ccdb37c4dc00035d5a14c546c95a93f89784f2dad22b11d491f16117343d6291"
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
