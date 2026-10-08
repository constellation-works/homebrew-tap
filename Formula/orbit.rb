class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.28.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "3b769f651cdf6c3b82b5f660f9b0ca833de3f2979e28156c551f975701ac837e"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.28.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "cd7dadce756db97387829a590f6ff4fcfbb0978bc60400b19515e83d3a042826"
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
