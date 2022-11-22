# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kadiog < Formula
  desc ""
  homepage "https://github.com/akifkadioglu/kadiog-cli"
  version "0.1.3"

  on_macos do
    url "https://github.com/akifkadioglu/kadiog-cli/releases/download/v0.1.3/kadiog-cli_0.1.3_darwin_all.tar.gz"
    sha256 "7441d497e5c11f320da3426983a813bd139680544787b0979a468f678c956109"

    def install
      bin.install "kadiog-cli"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/akifkadioglu/kadiog-cli/releases/download/v0.1.3/kadiog-cli_0.1.3_linux_arm64.tar.gz"
      sha256 "b1b504ffdb85f4c1a396b1edcaacef5c4fb51dd59c7e61f708b3ed8c75005864"

      def install
        bin.install "kadiog"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/akifkadioglu/kadiog-cli/releases/download/v0.1.3/kadiog-cli_0.1.3_linux_amd64.tar.gz"
      sha256 "18457f89d7ab4f1810e1211b0352cbc54b87f9167031df1d2dbfa52f2a56bdcb"

      def install
        bin.install "kadiog"
      end
    end
  end
end
