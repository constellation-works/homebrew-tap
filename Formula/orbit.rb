class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.50.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.50.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "d7580ec3ea1981f571df0c0fade5c34ecebcd5d58a6a97c92048c922636de536"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.50.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "f84fc60df9647d7677aa3235142db5b80914cc284c05ed7655833bddc869ae14"
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
