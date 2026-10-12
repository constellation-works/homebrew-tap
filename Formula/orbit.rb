class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.28.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.28.3/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "fe9f7dc43b329be813cc26c6d09e9a8c5cb61261a0c13d1b5ab42a1ef2d2b870"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.28.3/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "54879b829658f5105b744db436856bd294ce9dccf19735afd0c1692c4f2964e0"
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
