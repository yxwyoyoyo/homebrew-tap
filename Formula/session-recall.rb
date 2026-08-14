class SessionRecall < Formula
  desc "Find and resume AI coding sessions by content or directory"
  homepage "https://github.com/yxwyoyoyo/session-recall"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.2.0/session-recall_0.2.0_Darwin_arm64.tar.gz"
      sha256 "91e3eb84834361d44b8280e31999aca6e3d89f084fcb6f2edd58cf78dc736f40"
    else
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.2.0/session-recall_0.2.0_Darwin_x86_64.tar.gz"
      sha256 "64f31d57cfa24209a41359a882b07f3d4a3c9c0f3c9f9daed32330118ce7b1a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.2.0/session-recall_0.2.0_Linux_arm64.tar.gz"
      sha256 "e5e6f12ed3db6e2cc9498b3f6e71f61c4b49f0a942f2e181e029407159ea4553"
    else
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.2.0/session-recall_0.2.0_Linux_x86_64.tar.gz"
      sha256 "ea0d4392dd33bead9ddc41a936a0ddb17878f6f0fa4f04fb2e774d6c6385c4c5"
    end
  end

  def install
    bin.install "session-recall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/session-recall version")
  end
end
