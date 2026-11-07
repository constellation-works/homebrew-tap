class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.46.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.46.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "d4f6a3335cc3541e1126728958e895cba1795c590b58a40032e957ea30fa3fb7"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.46.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "c9ddd84f24721cec78b8a07016e35707c6ad137083dde2abca9c13cca58c2098"
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
