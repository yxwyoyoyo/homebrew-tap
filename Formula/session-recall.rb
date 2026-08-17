class SessionRecall < Formula
  desc "Find and resume AI coding sessions by content or directory"
  homepage "https://github.com/yxwyoyoyo/session-recall"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.4.0/session-recall_0.4.0_Darwin_arm64.tar.gz"
      sha256 "ae18800ea0c7add66adb29ad3fdb329d5162b5d0d9c206e808a83bf2cd196f53"
    else
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.4.0/session-recall_0.4.0_Darwin_x86_64.tar.gz"
      sha256 "10ca5bbffcd4f4eebbff608f688acef209017afbf2cc17e5ded72fd137e0dff4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.4.0/session-recall_0.4.0_Linux_arm64.tar.gz"
      sha256 "a46e5e3f10dab807963601e3f04dc717e8f3ceb4428c7922fa6a7c5ed539f37d"
    else
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.4.0/session-recall_0.4.0_Linux_x86_64.tar.gz"
      sha256 "3d1b4aec9d2c580edb6a5897e6493f0c70f5cbb8ea8078eb65631de4b5cf10a7"
    end
  end

  def install
    bin.install "session-recall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/session-recall version")
  end
end
