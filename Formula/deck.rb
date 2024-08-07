# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deck < Formula
  desc "Declarative configuration for Kong"
  homepage "https://github.com/kong/deck"
  version "1.39.4"

  on_macos do
    url "https://github.com/Kong/deck/releases/download/v1.39.4/deck_1.39.4_darwin_all.tar.gz"
    sha256 "8b474c04d8f3a7988b7e4b960074ff485cc869c082c42c8f19e61b2c5954c5fd"

    def install
      bin.install "deck"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Kong/deck/releases/download/v1.39.4/deck_1.39.4_linux_amd64.tar.gz"
      sha256 "2c0ffec71afd13ff9e802c1975bf3b7cb308be58e9b8e5e4b50ae375297ca108"

      def install
        bin.install "deck"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Kong/deck/releases/download/v1.39.4/deck_1.39.4_linux_arm64.tar.gz"
      sha256 "262c5814a835621bfb9171629bd1581c2bebf02432ca0cbf6bc662c17cf87d0b"

      def install
        bin.install "deck"
      end
    end
  end

  test do
    system "#{bin}/deck", "version"
  end
end
