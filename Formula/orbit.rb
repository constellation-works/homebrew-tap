class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.36.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "2bc7a951e08f400ed85dd37c22617571d5b4733d25b4229c5e1867acc5c7562a"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.36.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "4d0c5034ce2d086d9c9ba60e22240592c923c5590fffea07b49b8c24c63129a1"
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
