class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.44.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "8f74b7b5e609d556473251755fb774d573b685566e27838a9722c08b325f612d"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.44.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "31a58e5b7c62f0a35bf6ec940a1c8b7dad783cf26670749b0c881b5050d32442"
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
