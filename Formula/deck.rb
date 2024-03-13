# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deck < Formula
  desc "Declarative configuration for Kong"
  homepage "https://github.com/kong/deck"
  version "1.36.0"

  on_macos do
    url "https://github.com/Kong/deck/releases/download/v1.36.0/deck_1.36.0_darwin_all.tar.gz"
    sha256 "d5a7b8eade511e989c2f86bcd052ba4fc82d8e82428e9a98201766a7967fabbe"

    def install
      bin.install "deck"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Kong/deck/releases/download/v1.36.0/deck_1.36.0_linux_arm64.tar.gz"
      sha256 "ef7222cc1b3965bf0188d7ba6a3f2a0572c509dbc195f286aaa132ac7353c3c2"

      def install
        bin.install "deck"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Kong/deck/releases/download/v1.36.0/deck_1.36.0_linux_amd64.tar.gz"
      sha256 "599c631ede580ef931a5dde25a626f9c60a21d66021efe4cd24d48d884ed54ea"

      def install
        bin.install "deck"
      end
    end
  end

  test do
    system "#{bin}/deck", "version"
  end
end
