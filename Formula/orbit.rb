class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.33.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "f06d6695bf805c51e6caa8c51c2afe4aa428c16dea2d41b230560dd89ebaa04f"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.33.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "14c2def59161940eba402a4f8b43be5635e3285e5d42b818469607b2eb3f7213"
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
