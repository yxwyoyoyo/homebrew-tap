class SessionTry < Formula
  desc "Find and resume AI coding sessions by content or directory"
  homepage "https://github.com/yxwyoyoyo/session-try"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yxwyoyoyo/session-try/releases/download/v0.1.0/session-try_0.1.0_Darwin_arm64.tar.gz"
      sha256 "588992cd92b4fbc15610d9d033cccdb76f7e5fe2d5a6fa262754341f83318b2b"
    else
      url "https://github.com/yxwyoyoyo/session-try/releases/download/v0.1.0/session-try_0.1.0_Darwin_x86_64.tar.gz"
      sha256 "33e999395621557cc4f8264c9209020a76dc3ac6cccdd5880c572558a436c002"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yxwyoyoyo/session-try/releases/download/v0.1.0/session-try_0.1.0_Linux_arm64.tar.gz"
      sha256 "46288af83aaaf6bab226ab69ce1410574e59288a6ea5a797195847fdb86c1e72"
    else
      url "https://github.com/yxwyoyoyo/session-try/releases/download/v0.1.0/session-try_0.1.0_Linux_x86_64.tar.gz"
      sha256 "96deeb602200e8732f6eba72b2474d6a410bd72b62329672e7b77e62a1e57777"
    end
  end

  def install
    bin.install "session-try"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/session-try version")
  end
end
