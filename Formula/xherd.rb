class Xherd < Formula
  desc "Run, watch and steer many coding agents, each in its own git worktree"
  homepage "https://github.com/xionjames/xherd"
  version "0.5.0"
  license "GPL-3.0-or-later"

  depends_on "git"
  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/xionjames/xherd/releases/download/v0.5.0/xherd-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "ee469081b8dd1714d07cadfb7322e8f4910d7e2824f259edb25d7b3e053573ba"
    end
    on_intel do
      url "https://github.com/xionjames/xherd/releases/download/v0.5.0/xherd-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "ad0f8781d82113c7a71719b1349bee9a0f225a27dc9ca207e136dd4171802c54"
    end
  end

  def install
    bin.install "xherd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xherd --version")
  end
end
