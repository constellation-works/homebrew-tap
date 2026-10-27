class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.35.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "66aabcb3f22373bf8a1b20ff00298d4b8c07e70458ca4b835e3c370df306623e"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.35.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "ca99415f715a707b3b71fa5d3e6e8b08697b6cdeea49c54a79357dedb4b9af86"
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
