class Tnj < Formula
  desc "Tasks, Notes, Journal - A lightweight terminal-based application"
  homepage "https://github.com/mikenorusis/tnj"
  version "0.1.9"

  on_macos do
    on_intel do
       url "https://github.com/mikenorusis/tnj/archive/refs/tags/v0.1.9.tar.gz"
      sha256 "baa688e9058b1bf97be81ed9c74d3332b10b38c31b851c423542c935d76cf172"
    end
    on_arm do
      url "https://github.com/mikenorusis/tnj/releases/download/v#{version}/tnj-macos-aarch64"
      sha256 "ddf258ccbf558e2c9a08aa63e82056e6970f6b44bc074cb33e5b2dac1ae7ce77"
    end
  end

  def install
    bin.install (Hardware::CPU.intel? ? "tnj-macos-x86_64" : "tnj-macos-aarch64") => "tnj"
  end

  test do
    system "#{bin}/tnj", "--version"
  end
end