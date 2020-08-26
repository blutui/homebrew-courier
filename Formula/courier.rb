# This file was generated by GoReleaser. DO NOT EDIT.
class Courier < Formula
  desc "Blutui Courier CLI"
  homepage "https://blutui.com"
  version "0.2.4"
  bottle :unneeded

  if OS.mac?
    url "https://cdn.blutui.com/courier/v0.2.4/courier_0.2.4_macOS_64-bit.tar.gz"
    sha256 "de80efc7cd183a6fba8d7f1859dbd83f6ef4854b5a5f354cd0544e3ccf48654c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://cdn.blutui.com/courier/v0.2.4/courier_0.2.4_linux_64-bit.tar.gz"
      sha256 "35a9b1bcffdff99d18a08bb69cad016d95376ac71f648583ac1fe7b31c4029f2"
    end
  end

  def install
    bin.install "courier"
  end

  def caveats; <<~EOS
    Dont forget to add .courier in the .gitignore file of each project
  EOS
  end
end
