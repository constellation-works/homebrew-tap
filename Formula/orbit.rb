class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.25.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.25.1/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "99d17280830dba73a5a701a7506a09d5f7d2ae6db309b86dbcbba86d5c445cd0"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.25.1/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "7d79a03364b7a92b5c888fe8f16adb9403ab6f9cd8c1861dc42c7f611bd1c205"
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
