class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.27.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "cf90b6be484287228c01cd79978cc0ff2b264e6461f08e2ec18e15deed3029ee"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.27.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "a92e8c5289002f7f8f5962c59bdb3b358d64d4a17071aa16c9f7c23294d103ac"
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
