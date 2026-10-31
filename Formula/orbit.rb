class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.40.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "7359daced62ab9f2ca48138fc5ae44d2512100667e2a3523dac1bc9eac5e7a9b"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.40.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "05c38358021a83bf7fe2385ebd7f1da1db6acb4d6eff6ced8978ab80471323c4"
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
