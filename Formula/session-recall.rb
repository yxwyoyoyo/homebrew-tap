class SessionRecall < Formula
  desc "Find and resume AI coding sessions by content or directory"
  homepage "https://github.com/yxwyoyoyo/session-recall"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.6.0/session-recall_0.6.0_Darwin_arm64.tar.gz"
      sha256 "b3c77a5d5cee3d3182c8dc3c6e019da1ce23053cd52ac3956792d52f5b63c070"
    else
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.6.0/session-recall_0.6.0_Darwin_x86_64.tar.gz"
      sha256 "93b906781c4e2299109667d7a4025049d3bd2a51ebbf52ee976b93ed668a8cef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.6.0/session-recall_0.6.0_Linux_arm64.tar.gz"
      sha256 "d8e21c4c40146ef6776af857ffb4fcb36252c223ae79100ae4c07a75009bee6c"
    else
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.6.0/session-recall_0.6.0_Linux_x86_64.tar.gz"
      sha256 "6b99362c101c3a3954b68e63fadceefbad3c765e404153fed6bc3f51b81efdf9"
    end
  end

  def install
    bin.install "session-recall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/session-recall version")
  end
end
