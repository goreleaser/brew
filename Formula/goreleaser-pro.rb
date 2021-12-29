# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaserPro < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "1.2.3-pro"
  license "Copyright Becker Software LTDA"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v1.2.3-pro/goreleaser-pro_Darwin_x86_64.tar.gz"
      sha256 "9d89788f684254de1a40528860cc2d799b24eb48cca8278478ef47dd1a0165b3"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v1.2.3-pro/goreleaser-pro_Darwin_arm64.tar.gz"
      sha256 "06705dcc9b0860a430c087db53171f0198cf6478f958039690283ecfe5e5b3a8"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v1.2.3-pro/goreleaser-pro_Linux_armv7.tar.gz"
      sha256 "78382b7bd5731bb8f5e55210210d526f2fc05d642d3f1300804e30009c073f26"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v1.2.3-pro/goreleaser-pro_Linux_x86_64.tar.gz"
      sha256 "ffbba89037c6a1bd096ca616921ae04bbc8cc3f369054f8f06dd094b3638a56c"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v1.2.3-pro/goreleaser-pro_Linux_arm64.tar.gz"
      sha256 "55a25bf82cd7135cb24517caf1046c6e62cff0b3a09c821e734332848f4f0728"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
      end
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  conflicts_with "goreleaser"

  test do
    system "#{bin}/goreleaser -v"
  end
end
