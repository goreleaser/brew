# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chglog < Formula
  desc "chglog is a changelog management library and tool"
  homepage "https://github.com/goreleaser/chglog"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goreleaser/chglog/releases/download/v0.4.1/chglog_0.4.1_Darwin_arm64.tar.gz"
      sha256 "74f71f5b8aa23f01af9e6221359f3b142e95cbb6608bf2c345762d5e24968789"

      def install
        bin.install "chglog"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/chglog/releases/download/v0.4.1/chglog_0.4.1_Darwin_x86_64.tar.gz"
      sha256 "37ebccba17dd3eee7b1a90f1838c7f217cf2e89d2c91897ce5fa1d10b7ffc5bc"

      def install
        bin.install "chglog"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/chglog/releases/download/v0.4.1/chglog_0.4.1_Linux_arm64.tar.gz"
      sha256 "aadb79f26b0308c649fa40c1caa414ff97e1c4aadc8ea87ba6ec247af02ad210"

      def install
        bin.install "chglog"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/chglog/releases/download/v0.4.1/chglog_0.4.1_Linux_x86_64.tar.gz"
      sha256 "e0caefd78a17f36ce4a3ddc07959fd106aa7f6202838c02b633bfa9eb9ae1064"

      def install
        bin.install "chglog"
      end
    end
  end

  test do
    system "#{bin}/chglog version"
  end
end
