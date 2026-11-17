class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.51.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.51.1/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "6baef1d63afdf615838c5660036af55f04c7bcc249591f29f925088fc6ce509c"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.51.1/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "e8671ba1d8183f86e498ecfa833817c1bda9ce95341ad5a3bb510b85685aca4f"
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
