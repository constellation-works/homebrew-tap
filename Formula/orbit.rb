class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.28.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.28.2/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "1db77dae33aad10b2d2b02f209d0f312a368ca420e25eeeb3bab74740ad7c801"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.28.2/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "67eae5d4141df31d2042de18e06ddab34364c7fd2ca626433fa1edf75e5bc98a"
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
