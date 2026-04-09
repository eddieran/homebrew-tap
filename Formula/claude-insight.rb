class ClaudeInsight < Formula
  desc "Local observability and audit tooling for Claude Code sessions"
  homepage "https://github.com/eddieran/claude-insight"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.3/claude-insight-v0.1.3-darwin-aarch64.tar.gz"
      sha256 "70d93d1816386af54c5160e6a59f7f718bfa36b1781d9b1959768030d54d2689"
    else
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.3/claude-insight-v0.1.3-darwin-x86_64.tar.gz"
      sha256 "3bdb60cc3c4e7a8a3f163fa8d48554843abd167f9577cd8fb722b0990cdfaf0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.3/claude-insight-v0.1.3-linux-aarch64.tar.gz"
      sha256 "a0e0622f23638c89631228f029617ed9e7123fd03edad59ec2b3c9434fd46061"
    else
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.3/claude-insight-v0.1.3-linux-x86_64.tar.gz"
      sha256 "e1117ed08981d01a8e8f4575d7cb8425bd6dd92b7a0e1f249fd06229c58d797a"
    end
  end

  def install
    bin.install "claude-insight"
  end

  test do
    assert_match "Local observability for Claude Code", shell_output("#{bin}/claude-insight --help")
  end
end
