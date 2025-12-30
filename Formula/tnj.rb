class Tnj < Formula
  desc "Tasks, Notes, Journal - A lightweight terminal-based application"
  homepage "https://github.com/mikenorusis/tnj"
  version "0.1.12"  # Start with your current version

  url "https://github.com/mikenorusis/tnj/releases/download/v0.1.12/tnj-macos-universal"
  sha256 "fd89c7a476d3cea49105a7e41791832b460441620487327137138c7a8463a179"

  def install
    bin.install "tnj-macos-universal" => "tnj"
  end

  test do
    system "#{bin}/tnj", "--version"
  end
end