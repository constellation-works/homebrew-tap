class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.34.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "7167721a10f0b394ce409f0cab9a353f4dd6cba5f437577421f20f25a6df97b1"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.34.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "3a614cf78d6628c4c4d6302697d6332a1fb21c28df36e31052c421de07227a05"
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
