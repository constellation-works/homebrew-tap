class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.49.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.49.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "b5468e66163d064fcbd16116805f310f5903b28073fe08d1f5e750d25be87ef4"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.49.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "2c78784ee1b1ba756a51cf0fb4455a2b0828f9afd53584915809fe884e7d6eb0"
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
