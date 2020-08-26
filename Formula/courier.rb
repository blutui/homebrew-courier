# This file was generated by GoReleaser. DO NOT EDIT.
class Courier < Formula
  desc "Blutui Courier CLI"
  homepage "https://blutui.com"
  version "0.2.5"
  bottle :unneeded

  if OS.mac?
    url "https://cdn.blutui.com/courier/v0.2.5/courier_0.2.5_macOS_64-bit.tar.gz"
    sha256 "e6a4eb21e270f4cd32a77f983fe6593ea2d32922856fdd19cdabdf8ef02f812c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://cdn.blutui.com/courier/v0.2.5/courier_0.2.5_linux_64-bit.tar.gz"
      sha256 "a1b6e4962a1216ddd9c17a4c3fe44fc04bd61e9a69e462f29c4e7758547818a4"
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
