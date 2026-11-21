class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/constellation-works/orbit"
  version "0.52.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/constellation-works/orbit/releases/download/v0.52.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "5e9eab01543d14c2d424fe87a41b467da210d91b848859e54ff99c666d481342"
    end

    on_intel do
      url "https://github.com/constellation-works/orbit/releases/download/v0.52.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "082754edd46e94f76708fdfe106708ce9c6c463f6e8a2b70016447ea8f32c384"
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
