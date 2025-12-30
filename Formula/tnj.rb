class Tnj < Formula
  desc "Your TUI application"  # ← Update with a real description
  homepage "https://github.com/mikenorusis/tnj"
  version "0.1.7"  # ← Match your current/latest release version

  if Hardware::CPU.intel?
    url "https://github.com/mikenorusis/tnj/archive/refs/tags/v0.1.7.tar.gz"
    sha256 "d848034d6f86916d48179d54d24d6ad18770176de73a80c4c85a77b410e6574f"
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