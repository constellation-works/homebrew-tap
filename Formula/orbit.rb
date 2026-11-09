class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.48.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.48.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "70d9f38e14dee0ea8ba8e752c06edfdb3ec85aa42d9f5b5dedc082d997b8ffd3"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.48.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "b69cf4f9fcefc4517907a5311e7a9bd5e653777a4b91cc77fc794d8ec9222358"
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
