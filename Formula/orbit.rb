class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.31.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "2d459893e078eaaa273aa64c946363f63310ba6732897b3f028e0dfb133839d6"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.31.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "49d2127c657a44a9653f9ac5753c92d9d750751e08e6f8c24cdd18e2c502c2d8"
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
