# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nfpm < Formula
  desc "nFPM is a simple, 0-dependencies, deb, rpm and apk packager."
  homepage "https://nfpm.goreleaser.com"
  version "2.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.12.0/nfpm_2.12.0_Darwin_arm64.tar.gz"
      sha256 "847b03e28077771b47be399ec2ab2e11127279569bcf302768fda14521ad81f1"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
        man1.install "manpages/nfpm.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.12.0/nfpm_2.12.0_Darwin_x86_64.tar.gz"
      sha256 "2431ef5cb7d0640d5d665d376ebe2116370206431f2365a843e389c323355e4a"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
        man1.install "manpages/nfpm.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.12.0/nfpm_2.12.0_Linux_arm64.tar.gz"
      sha256 "98e35bf8f53d3a1966e5157c70f7ba07638b300ff79bfaa54e76d626937dc623"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
        man1.install "manpages/nfpm.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.12.0/nfpm_2.12.0_Linux_x86_64.tar.gz"
      sha256 "6de1139b4dbad81ad29d0f0d1d132a1304af884f1e797b536f10e73c0ec46f97"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
        man1.install "manpages/nfpm.1.gz"
      end
    end
  end

  test do
    system "#{bin}/nfpm -v"
  end
end
