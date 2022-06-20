# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Courier < Formula
  desc "Blutui Courier CLI"
  homepage "https://blutui.com"
  version "0.3.0"

  on_macos do
    url "https://cdn.blutui.com/courier/v0.3.0/courier_0.3.0_macOS_64-bit.tar.gz"
    sha256 "27411caefd0b85cd5e5878ecc655ac650e1003aa46fc9233fcc87bffccf40e62"

    def install
      bin.install "courier"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Courier
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.blutui.com/courier/v0.3.0/courier_0.3.0_linux_64-bit.tar.gz"
      sha256 "379820c918105a80156b66d25bc436bb58b4aa1e721a69192ffa82c78abd7976"

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
