class ClaudeInsight < Formula
  desc "Local observability and audit tooling for Claude Code sessions"
  homepage "https://github.com/eddieran/claude-insight"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.4/claude-insight-v0.1.4-darwin-aarch64.tar.gz"
      sha256 "e6609a3481b252ac8e3cfde4b75319c85713abbe5d1f7058d901fabdd08d17f8"
    else
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.4/claude-insight-v0.1.4-darwin-x86_64.tar.gz"
      sha256 "8edfb00fdd90b2288e4d91aec0b4a6d0d59faa93cb9e672c66ab7b262672d7d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.4/claude-insight-v0.1.4-linux-aarch64.tar.gz"
      sha256 "bcd86484d0441b4357720dcc92fc5cdbfd3252e5097947bd09f0ce8c769bb29b"
    else
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.4/claude-insight-v0.1.4-linux-x86_64.tar.gz"
      sha256 "2832d327960ffe7553bd50bc23fde12509750c87d7a0da3c85c3ab2a7ac1c8f2"
    end
  end

  def install
    bin.install "claude-insight"
  end

  test do
    assert_match "Local observability for Claude Code", shell_output("#{bin}/claude-insight --help")
  end
end
