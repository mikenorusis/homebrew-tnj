class Tnj < Formula
  desc "Tasks, Notes, Journal - A lightweight terminal-based application"
  homepage "https://github.com/mikenorusis/tnj"
  version "0.1.14"  # Start with your current version

  url "https://github.com/mikenorusis/tnj/releases/download/v0.1.14/tnj-macos-universal"
  sha256 "7000ac1a7ae0a08d05e2f321aded6c22a4ef430c2d76044dc306ca744439a0a6"

  def install
    bin.install "tnj-macos-universal" => "tnj"
  end

  test do
    system "#{bin}/tnj", "--version"
  end
end