class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.54.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.54.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "4f6c8da098fc4ac962387f24cc1456536f828093f82f469c496e3c8ac2ce84be"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.54.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "60e7e94b577d8278b8422e44b2f07081a4213cc1c4621d5ab4067e5fb3e16449"
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
