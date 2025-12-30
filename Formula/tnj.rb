class Tnj < Formula
  desc "Tasks, Notes, Journal - A lightweight terminal-based application"
  homepage "https://github.com/mikenorusis/tnj"
  version "0.1.13"  # Start with your current version

  url "https://github.com/mikenorusis/tnj/releases/download/v0.1.13/tnj-macos-universal"
  sha256 "9ccbfc0322db0aadf1251aa185dddff025ab0e6421109184f29d1e6305bd1763"

  def install
    bin.install "tnj-macos-universal" => "tnj"
  end

  test do
    system "#{bin}/tnj", "--version"
  end
end