class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.43.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "1acd63d91b89a8adaa817697d94a9be441308faf7e7eca29ae9fdffaef6e5fdd"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.43.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "2aed380ec0df4d0ff58e20ffecef8ca285de7745158d534112db9f5ecced5c86"
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
