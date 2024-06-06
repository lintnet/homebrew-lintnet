# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lintnet < Formula
  desc "Secure, Powerful, Reusable Configuration file linter powered by Jsonnet
"
  homepage "https://github.com/lintnet/lintnet"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lintnet/lintnet/releases/download/v0.4.4/lintnet_darwin_amd64.tar.gz"
      sha256 "60763ded38542212768a307a326c58babd56cb11e3ca334f70cfacfd8295ff8e"

      def install
        bin.install "lintnet"
      end
    end
    on_arm do
      url "https://github.com/lintnet/lintnet/releases/download/v0.4.4/lintnet_darwin_arm64.tar.gz"
      sha256 "af68b97538079fa694191e3f4d59dab3027b96cfd1c0ff9d67cbf47fdb9c6ffe"

      def install
        bin.install "lintnet"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lintnet/lintnet/releases/download/v0.4.4/lintnet_linux_amd64.tar.gz"
        sha256 "568610e44c63fdc74fb54481d5374dfd5704d086f311b65471b0b202a09c63fa"

        def install
          bin.install "lintnet"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lintnet/lintnet/releases/download/v0.4.4/lintnet_linux_arm64.tar.gz"
        sha256 "61298839a3011ccc19438f627cf76ee110523ce5a34ff1fe99c676a1a9708274"

        def install
          bin.install "lintnet"
        end
      end
    end
  end

  test do
    system "#{bin}/lintnet --version"
  end
end
