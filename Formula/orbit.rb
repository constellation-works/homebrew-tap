class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.19.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.19.1/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "2b3093df0fb168df0e04559c2fb9f9a59f09d355dbc4bfc11bd147a0eed8d748"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.19.1/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "98633e50a69cab7c004f78ebf49426b9170734ba10d6883ccbfa6b3449474589"
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
