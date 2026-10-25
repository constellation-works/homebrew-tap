class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.32.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "ef4a45538adb4080a472bdc7034fbcd98da6107f89faf3de1592aa2ecd92073a"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.32.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "0c1260bef84c0b384a6e6b5711ef9e5baa73f8afca852112b5214f696b7469c7"
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
