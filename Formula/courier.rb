# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Courier < Formula
  desc "Blutui Courier CLI"
  homepage "https://blutui.com"
  version "0.2.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cdn.blutui.com/courier/v0.2.13/courier_0.2.13_macOS_64-bit.tar.gz"
      sha256 "3a1d6295a58debdcf5c8a4e58f7f3357c7cffcf2d9d341dceab7207f59c06c58"

      def install
        bin.install "courier"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.blutui.com/courier/v0.2.13/courier_0.2.13_linux_64-bit.tar.gz"
      sha256 "11cd7671be1ffa77641b061d047ee231060124ba831f3d6a279e65eb3a0971eb"

      def install
        bin.install "courier"
      end
    end
  end

  def caveats; <<~EOS
    Dont forget to add .courier in the .gitignore file of each project
  EOS
  end
end
