class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.47.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.47.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "28d51a20ec583678a2807268baddcf94066c03c89de134c217bc7fc24548b1e3"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.47.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "e38ec9ae0784dc9b59e1b65b0cae6e4389d7777c856bc67c12855b3d11cc880a"
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
