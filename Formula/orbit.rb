class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.24.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "5d4da40441b36b90eab4180597302690f6494a492b911636cf63034b70452a62"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.24.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "37b96fdb746fd6fe1ec52735dd6cf7520ffb5c1ead754608cf5373d237cf00f5"
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
