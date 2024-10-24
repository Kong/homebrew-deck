# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deck < Formula
  desc "Declarative configuration for Kong"
  homepage "https://github.com/kong/deck"
  version "1.41.1"

  on_macos do
    url "https://github.com/Kong/deck/releases/download/v1.41.1/deck_1.41.1_darwin_all.tar.gz"
    sha256 "0229e6fdc2f0d422a660437fc7df553849593665c98c72c0e3049b5f0d2a90ea"

    def install
      bin.install "deck"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Kong/deck/releases/download/v1.41.1/deck_1.41.1_linux_arm64.tar.gz"
      sha256 "724175501d9979cc38cf67fabe7d8e4b6d57d7313d4a61119460fb41bb393b24"

      def install
        bin.install "deck"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Kong/deck/releases/download/v1.41.1/deck_1.41.1_linux_amd64.tar.gz"
      sha256 "2ade03f62005752bb7b8457b75c23130d8084b61590216ee3cb6f689e34ea6cc"

      def install
        bin.install "deck"
      end
    end
  end

  test do
    system "#{bin}/deck", "version"
  end
end
