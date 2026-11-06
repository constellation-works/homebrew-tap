class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.45.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.45.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "32f5dd42d31869b106116211cb95652bda9a9b5aa6fded6b979045f92b9604e4"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.45.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "9f3bc92e27496d2a59594502db6641758fafafd359c1ece992d7322fa1c742a9"
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
