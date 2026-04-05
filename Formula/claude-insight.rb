class ClaudeInsight < Formula
  desc "Local observability and audit tooling for Claude Code sessions"
  homepage "https://github.com/eddieran/claude-insight"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.2/claude-insight-v0.1.2-darwin-aarch64.tar.gz"
      sha256 "486e10fdf3d2b791cda930ce2b2ecd51fa3f6760ce9ea7619c751131a6735588"
    else
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.2/claude-insight-v0.1.2-darwin-x86_64.tar.gz"
      sha256 "192cd7a3779e7418c8b72d815e8dc5a0c5bdccdf9cedcb74855955f8d47ceff7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.2/claude-insight-v0.1.2-linux-aarch64.tar.gz"
      sha256 "d2a0f23ea8d168f3211d6358bf24e3f8bd5358272bc011ba6878a5e3a2d2ff6b"
    else
      url "https://github.com/eddieran/claude-insight/releases/download/v0.1.2/claude-insight-v0.1.2-linux-x86_64.tar.gz"
      sha256 "75f45db417e669bd2539aa78116e8e20165cd40a98cc037ffd4bf4edc5b5368b"
    end
  end

  def install
    bin.install "claude-insight"
  end

  test do
    assert_match "Local observability for Claude Code", shell_output("#{bin}/claude-insight --help")
  end
end
