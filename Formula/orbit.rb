class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.26.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "0504156d5285d95959fa08dc8c5084bd467fa31c71c042cc764dadef53c21593"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.26.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "ede307d021dab80ac5896d730215cd4712a4d7a403be10e27b61c93fa4d6a582"
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
