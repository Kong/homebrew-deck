# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deck < Formula
  desc "Declarative configuration for Kong"
  homepage "https://github.com/kong/deck"
  version "1.39.0"

  on_macos do
    url "https://github.com/Kong/deck/releases/download/v1.39.0/deck_1.39.0_darwin_all.tar.gz"
    sha256 "9cda3899dbd170ced1c8da053eac33b82125fffe241cf82e05d6acdbc3221cf4"

    def install
      bin.install "deck"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Kong/deck/releases/download/v1.39.0/deck_1.39.0_linux_arm64.tar.gz"
      sha256 "368afee493052a798cc73606742b8f2deb3d3e45c5c104493e957b2eea220ba6"

      def install
        bin.install "deck"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Kong/deck/releases/download/v1.39.0/deck_1.39.0_linux_amd64.tar.gz"
      sha256 "8b8a9263e797974688bcd0c38874a0705a25979ac04b17a763d0ccbc3762864a"

      def install
        bin.install "deck"
      end
    end
  end

  test do
    system "#{bin}/deck", "version"
  end
end
