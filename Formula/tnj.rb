class Tnj < Formula
  desc "Tasks, Notes, Journal - A lightweight terminal-based application"
  homepage "https://github.com/mikenorusis/tnj"
  version "0.1.17"  # Start with your current version

  url "https://github.com/mikenorusis/tnj/releases/download/v0.1.17/tnj-macos-universal"
  sha256 "4e2492fa613d8bb48d69b789c5ed2b4802658093d6c855f156729e4b3eb78de8"

  def install
    bin.install "tnj-macos-universal" => "tnj"
  end

  test do
    system "#{bin}/tnj", "--version"
  end
end