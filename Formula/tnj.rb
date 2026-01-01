class Tnj < Formula
  desc "Tasks, Notes, Journal - A lightweight terminal-based application"
  homepage "https://github.com/mikenorusis/tnj"
  version "0.1.15"  # Start with your current version

  url "https://github.com/mikenorusis/tnj/releases/download/v0.1.15/tnj-macos-universal"
  sha256 "09f3668febb11f75041f95c9d18f0ba9549c4b2f2343186272f7d78a1228345d"

  def install
    bin.install "tnj-macos-universal" => "tnj"
  end

  test do
    system "#{bin}/tnj", "--version"
  end
end