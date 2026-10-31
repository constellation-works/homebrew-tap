class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.41.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "0352ed7e33fb4ad9b8215850d14cfe659e53a150cef0458f87bdb7e369d4f0c8"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.41.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "3331ecf8c585a79e4f8e11208f9b4e41f3155233e84242aa89c2be7b753f5ab0"
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
