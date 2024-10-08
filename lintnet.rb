# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lintnet < Formula
  desc "Secure, Powerful, Reusable Configuration file linter powered by Jsonnet
"
  homepage "https://github.com/lintnet/lintnet"
  version "0.4.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lintnet/lintnet/releases/download/v0.4.8/lintnet_darwin_amd64.tar.gz"
      sha256 "57955a6e2872ff724ec727eccb42df05797ad5c9cf499168df564adc32afd8a5"

      def install
        bin.install "lintnet"
        generate_completions_from_executable(bin/"lintnet", "completion", shells: [:bash, :zsh, :fish])
      end
    end
    on_arm do
      url "https://github.com/lintnet/lintnet/releases/download/v0.4.8/lintnet_darwin_arm64.tar.gz"
      sha256 "4ad01c5cc176f7bd2fbda76607743ed1ed080f8c956140de1e628ed0ec44222e"

      def install
        bin.install "lintnet"
        generate_completions_from_executable(bin/"lintnet", "completion", shells: [:bash, :zsh, :fish])
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lintnet/lintnet/releases/download/v0.4.8/lintnet_linux_amd64.tar.gz"
        sha256 "a0bdfc5504f1e72351e89a21ee54b80158c48e3d8811e6d62976def4cea946a5"

        def install
          bin.install "lintnet"
          generate_completions_from_executable(bin/"lintnet", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lintnet/lintnet/releases/download/v0.4.8/lintnet_linux_arm64.tar.gz"
        sha256 "68fe0a937113740f960c9a1f3658ecd228043f2c203efaa1aa27acee1b3e077f"

        def install
          bin.install "lintnet"
          generate_completions_from_executable(bin/"lintnet", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
  end

  test do
    system "#{bin}/lintnet --version"
  end
end
