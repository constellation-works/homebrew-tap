class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.19.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.19.2/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "6ca5a23d4a1e0c371280601de2c8c1d164b35eac0ed5c34d99ce47509bd13a36"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.19.2/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "ac1f93a0f5d1b767316cc655b87a8ade76840884ec6eb9693fef6ad34c20cc29"
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
