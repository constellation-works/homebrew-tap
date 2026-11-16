class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.51.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.51.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "0cdbe53f3dabe39fa653e79141723e619555b9fa59d1835bfc6b74e4d74aafeb"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.51.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "41d3383a21862ab0d1fc83f55bd5831059526d3313cc867686a701b0fbbf8acb"
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
