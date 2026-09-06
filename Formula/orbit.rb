class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.19.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "136c8c50e1fa8b42a92a324eec70aaafd6c2846923607080ecc06a4e2295c85c"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.19.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "1cce00c0e1f1d1582a7760fc3001517e2856896071730c19e329df35f063f944"
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
