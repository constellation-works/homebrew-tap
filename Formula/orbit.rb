class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.21.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "191ab62b5285b622f5f3ce9a45084edf9241f6320243e204fbfd111751f69abe"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.21.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "2d62ca5df990fa4092d0db24f0920ee639ce320864d34811f3d6cddc57d86c17"
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
