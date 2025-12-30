class Tnj < Formula
  desc "Tasks, Notes, Journal - A lightweight terminal-based application"
  homepage "https://github.com/mikenorusis/tnj"
  version "0.1.9"  # Start with your current version

  url "https://github.com/mikenorusis/tnj/releases/download/v#{version}/tnj-macos-universal"
  sha256 "REPLACE_WITH_SHA256_OF_UNIVERSAL_BINARY"

  def install
    bin.install "tnj-macos-universal" => "tnj"
  end

  test do
    system "#{bin}/tnj", "--version"
  end
end