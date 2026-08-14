class SessionRecall < Formula
  desc "Find and resume AI coding sessions by content or directory"
  homepage "https://github.com/yxwyoyoyo/session-recall"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.3.0/session-recall_0.3.0_Darwin_arm64.tar.gz"
      sha256 "7631197342b62c81cdd1a54cd2f22a2a02a325dd5d8ff663bf22b0d3474f82f5"
    else
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.3.0/session-recall_0.3.0_Darwin_x86_64.tar.gz"
      sha256 "97b9d5c66dd0044a41116354affa3b18e0dfff99cb6b8a2a848d6183275ed38d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.3.0/session-recall_0.3.0_Linux_arm64.tar.gz"
      sha256 "7d1818fa10038ddebf8fd64803c42383b5a70c6f5404d5ac92e62f1c7b95e9ea"
    else
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.3.0/session-recall_0.3.0_Linux_x86_64.tar.gz"
      sha256 "3a4d98c8fa64f8ed97f01a2cb8cf8988e1111e17a0d482e8af02c97d0dd5baac"
    end
  end

  def install
    bin.install "session-recall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/session-recall version")
  end
end
