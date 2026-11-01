class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.42.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.42.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "51be06fd3f423a5fd4894c4a434ac531c003302168d11900d5e9e394768129b9"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.42.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "c9cdd0c2a192151b353f289f36e7746fe5e39c28454b66f9ae1caab41b894007"
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
