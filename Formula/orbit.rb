class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.30.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "c24ff3ec4dd8f9b168a8b28a02f9ab55f1a1dc8d2f954aac3935b9e19c6d55c7"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.30.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "7d4b9994887f1af5210b1c65c98c3126d8f4cf16f1ebc7ee9420d57cea1b6d83"
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
