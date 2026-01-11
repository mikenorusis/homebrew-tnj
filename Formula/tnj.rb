class Tnj < Formula
  desc "Tasks, Notes, Journal - A lightweight terminal-based application"
  homepage "https://github.com/mikenorusis/tnj"
  version "0.1.16"  # Start with your current version

  url "https://github.com/mikenorusis/tnj/releases/download/v0.1.16/tnj-macos-universal"
  sha256 "62af48bb5b80b1ec2acd13f33db094ca6040c69fe7d717ba5665fb653b2cc1f4"

  def install
    bin.install "tnj-macos-universal" => "tnj"
  end

  test do
    system "#{bin}/tnj", "--version"
  end
end