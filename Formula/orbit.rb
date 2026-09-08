class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.20.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "c64bba99d8755d3a8148e7db4398f2c2111916b5996a816d7361331ca1470c1c"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.20.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "29e8403e43bd75c562377c3d9573eb53b78bd1dc7ca37f7c94d7d9c53b6eac8a"
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
