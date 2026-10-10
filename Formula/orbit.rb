class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.28.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.28.1/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "e7955551c37b70f72c0447ba2896fe1813a48b2a629ce49fbede520a2a5350fe"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.28.1/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "a306a9a4baf661535ea1c409ebf7f43e4b1f45dba4352aa74b9665180f87de18"
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
