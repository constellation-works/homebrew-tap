class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.53.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.53.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "1b0e65aedd66e3967deb7ed946f35cbd9844f6f79f7686111392f5e047971f1d"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.53.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "a3dc7bd9a99d7584ba569f871108de27f560e2bc05a0cc9ebbc09d9d48aec200"
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
