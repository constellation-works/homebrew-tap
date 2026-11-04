class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.44.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.44.1/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "4dc0ffccae2edb33135156827c7d971d00f8be964afd3c0d9a50299c2d9c5dd3"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.44.1/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "07278a3ed88294e98adbd946a4a9c04c739c043c161cd7d2ae7d41a1d19d5f97"
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
