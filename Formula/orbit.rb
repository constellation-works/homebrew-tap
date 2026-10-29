class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.38.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "c5a03fd6dc4a64148bad81a37b9cadda22c864f2e95b6f76144ff4eab0a6eaf6"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.38.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "41acf6362bbc5dcfae086a12a98aa55155c85a68c4a93662ab09b5bcf99b0fd4"
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
