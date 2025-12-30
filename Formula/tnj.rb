class Tnj < Formula
  desc "Tasks, Notes, Journal - A lightweight terminal-based application"
  homepage "https://github.com/mikenorusis/tnj"
  version "0.1.10"  # Start with your current version

  url "https://github.com/mikenorusis/tnj/archive/refs/tags/v0.1.10.tar.gz"
  sha256 "4baa96a6383e681406e52bf2439a42b14b111c9873842284e932de4e5cfe38f0"

  def install
    bin.install "tnj-macos-universal" => "tnj"
  end

  test do
    system "#{bin}/tnj", "--version"
  end
end