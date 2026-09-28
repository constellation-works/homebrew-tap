class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.25.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "9dbab9104895e9bb9131cd851ee69d84ed022568cbd749332da59a3a00e42635"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.25.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "24e2cb0a42e238727b317ab2d978241b3d089cf84e605f6fadb4cf438e35bf77"
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
