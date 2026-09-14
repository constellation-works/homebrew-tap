class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.22.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.22.1/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "748a6d3914c636364d429e5c721fd1fc018f49dd4a4f8c465170c49cc28b57a5"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.22.1/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "4b8582d2e6cec3dbb2247b9f9dee9c1c7e8f87ba8cd4145b24f4f38674614162"
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
