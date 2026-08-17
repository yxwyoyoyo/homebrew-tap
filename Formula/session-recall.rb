class SessionRecall < Formula
  desc "Find and resume AI coding sessions by content or directory"
  homepage "https://github.com/yxwyoyoyo/session-recall"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.5.0/session-recall_0.5.0_Darwin_arm64.tar.gz"
      sha256 "47dea867ef8b3afc1e9b9ad136fee9fff0df11cf12be3eb83ea175dfcf95e010"
    else
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.5.0/session-recall_0.5.0_Darwin_x86_64.tar.gz"
      sha256 "60c2f634a667e33ec5e2966397a7fb998717d2ad4dd976115b17edbac91334dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.5.0/session-recall_0.5.0_Linux_arm64.tar.gz"
      sha256 "c6bb22580642b671ab934a9c6a1cceb0c4231e8ad5a1199694ff373901015764"
    else
      url "https://github.com/yxwyoyoyo/session-recall/releases/download/v0.5.0/session-recall_0.5.0_Linux_x86_64.tar.gz"
      sha256 "a48c5eec87facae9fb8955b94f753dc64651ef640e3db1d14033296f6e03308e"
    end
  end

  def install
    bin.install "session-recall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/session-recall version")
  end
end
