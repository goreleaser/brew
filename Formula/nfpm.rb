# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nfpm < Formula
  desc "nFPM is a simple, 0-dependencies, deb, rpm and apk packager."
  homepage "https://nfpm.goreleaser.com"
  version "2.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.9.0/nfpm_2.9.0_Darwin_arm64.tar.gz"
      sha256 "c0b547c1eecbecb9e39d848a758746e958f8c326c458e1a3f87999b37e9d652f"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.9.0/nfpm_2.9.0_Darwin_x86_64.tar.gz"
      sha256 "f1b0ba48b0c8fd8d34d6743e87059999630c0dce57f3d1f1abfe98d9535cf4ba"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.9.0/nfpm_2.9.0_Linux_arm64.tar.gz"
      sha256 "e19a621d62e3d5146a99b739ad5510e3c269f91cb8ff3361f6beb5663a6d9a9c"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.9.0/nfpm_2.9.0_Linux_x86_64.tar.gz"
      sha256 "88f3e34174d98745e1185a5e480f6a55438f37525d412c22c2b20536004b3f82"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
      end
    end
  end

  test do
    system "#{bin}/nfpm -v"
  end
end
