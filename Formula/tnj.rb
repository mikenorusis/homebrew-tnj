class Tnj < Formula
  desc "Tasks, Notes, Journal - A lightweight terminal-based application"
  homepage "https://github.com/mikenorusis/tnj"
  version "0.1.19"  # Start with your current version

  url "https://github.com/mikenorusis/tnj/releases/download/v0.1.19/tnj-macos-universal"
  sha256 "5a257eb8cdab1003121d65b9f0a9e0629e3179992ba98f1495a624882681151b"

  def install
    bin.install "tnj-macos-universal" => "tnj"
  end

  test do
    system "#{bin}/tnj", "--version"
  end
end