class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.23.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "6633940f1e2c7ab1533f2133b83b49387e22dabb9a7cb2d1424a70b5f9053a8a"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.23.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "ea14e0e30d8210dfeaeaf0823efff2fe6bb74b02b650a04943f569d72eb112f1"
    end
  end

  def install
    odie "Orbit Homebrew releases currently support macOS only. Use install.sh on Linux." if OS.linux?
    bin.install "orbit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orbit --version")
  end
end
