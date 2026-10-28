class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.37.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "67075f9a1a16b85655775f8177351b945c34b893b1c6ce169f3f1d3cb34d43ef"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.37.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "bddccb28e96cae4cb592f75d41dd459926706f8cb8c88ee07a0e48300f173bbc"
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
