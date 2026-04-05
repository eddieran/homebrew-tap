class ClaudeInsight < Formula
  desc "Local observability and audit tooling for Claude Code sessions"
  homepage "https://github.com/eddieran/claude-insight"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.1/claude-insight-v0.1.1-darwin-aarch64.tar.gz"
      sha256 "bb92ba1dee55922a9abe92346594bebe86707e4fcfe9d6cc4db403093081e16f"
    else
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.1/claude-insight-v0.1.1-darwin-x86_64.tar.gz"
      sha256 "326e8f1f242a73780823570ff7d0049e1eb3c32923bcf1c8cee0716edabb5f08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.1/claude-insight-v0.1.1-linux-aarch64.tar.gz"
      sha256 "808ce07872f8ac0f2f81965744846ad9df11b56ac74157ab7e0874800058bcfc"
    else
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.1/claude-insight-v0.1.1-linux-x86_64.tar.gz"
      sha256 "e2a429e8beae91c6fd06a8a9a623b8b5c5452e7d1edf90876633c5b53176f72d"
    end
  end

  def install
    bin.install "claude-insight"
  end

  test do
    assert_match "Local observability for Claude Code", shell_output("#{bin}/claude-insight --help")
  end
end
