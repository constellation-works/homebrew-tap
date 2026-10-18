class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.29.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "0a7e0b3b84ae2a960ad3b7bf63c7528a310a0675c3911f2af3a6091d58317294"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.29.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "72a374986dab050e3dd9c55ba6091d9941d7040c55ef331254c74fb270ca135f"
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
