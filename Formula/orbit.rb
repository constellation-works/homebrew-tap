class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.22.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "7cae3d653d4e64f4130067677d276e4587cd2f6e8ae67e07c111759ef1becc5e"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.22.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "1ec147a7e0938394f9755fe9feb1b798b7ef2c17ecc967e860fe160ac15843f2"
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
