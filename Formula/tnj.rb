class Tnj < Formula
  desc "Tasks, Notes, Journal - A lightweight terminal-based application"
  homepage "https://github.com/mikenorusis/tnj"
  version "0.1.18"  # Start with your current version

  url "https://github.com/mikenorusis/tnj/releases/download/v0.1.18/tnj-macos-universal"
  sha256 "a795b6306262bbdea1e20c8bf241ca40623967adaa863fd0572abfb026ee382b"

  def install
    bin.install "tnj-macos-universal" => "tnj"
  end

  test do
    system "#{bin}/tnj", "--version"
  end
end