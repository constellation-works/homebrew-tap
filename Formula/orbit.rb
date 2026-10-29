class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.39.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "5d34bc2129feaba06d3c070276c8274856077de814d0a69035ed6f7e7d09ea76"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.39.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "c9e2435f8d8d9e00c65234aa071a96c8d57caea14076a3a184e0f27e5858d1fc"
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
