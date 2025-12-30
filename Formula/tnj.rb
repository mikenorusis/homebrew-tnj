class Tnj < Formula
  desc "Your TUI application"  # ← Update with a real description
  homepage "https://github.com/mikenorusis/tnj"
  version "0.1.2"  # ← Match your current/latest release version

  if Hardware::CPU.intel?
    url "https://github.com/mikenorusis/tnj/releases/download/v#{version}/tnj-macos-x86_64"
    sha256 "81048e4bc4f43097afd9b3e485085e7bb79f546cbaf1d9bf056475004b805e75"
  else
    url "https://github.com/mikenorusis/tnj/releases/download/v#{version}/tnj-macos-aarch64"
    sha256 "05a9a186f09a23486966bd524618a2b752f96fc0fb66b68daaab0766a704f394"
  end

  def install
    bin.install "tnj-macos-x86_64" => "tnj" if Hardware::CPU.intel?
    bin.install "tnj-macos-aarch64" => "tnj" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/tnj", "--version"
  end
end