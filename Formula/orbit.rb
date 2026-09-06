class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.18.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "c605bbbc91397612a511fa19ed809a06317703c86f2ec9fd8c2c8fe71ab15f57"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.18.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "78cd9778c846ddbc3c8f30f8ac34fe7b64f0d9c0389cf54da5ab318a4ad144c3"
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
