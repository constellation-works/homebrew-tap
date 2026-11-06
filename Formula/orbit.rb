class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.45.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.45.1/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "3f974631d68afb125b90297ae9074bb829867bdfec7b016dffacf104c8781b51"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.45.1/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "5474e0be7c7846f7286fe676b9498a838d1cb71efcf9d454b74fed6cc13d82f9"
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
