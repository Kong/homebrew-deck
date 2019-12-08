# This file was generated by GoReleaser. DO NOT EDIT.
class Deck < Formula
  desc "Declarative configuration for Kong"
  homepage "https://github.com/hbagdi/deck"
  version "0.7.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/hbagdi/deck/releases/download/v0.7.0/deck_0.7.0_darwin_amd64.tar.gz"
    sha256 "a7f368fa03129108050bc8c2bde46a6c9f9ce02d6daaf9a83d8c010e9b5a877c"
  elsif OS.linux?
    url "https://github.com/hbagdi/deck/releases/download/v0.7.0/deck_0.7.0_linux_amd64.tar.gz"
    sha256 "753fcad53dc0f38146266b326ac060df564c4607c1b323d0d7afc6a3b94e0e90"
  end

  def install
    bin.install "deck"
  end

  test do
    system "#{bin}/deck version"
  end
end
