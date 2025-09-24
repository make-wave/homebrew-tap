class Wave < Formula
  desc "An HTTP client for folks who like their terminal"
  homepage "https://github.com/make-wave/wave"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/make-wave/wave/releases/download/v0.1.2/wave-macos-arm64"
      sha256 "4f0912f3b4e1357c8045d0c289ba3a988e3a62b8d971efdd2044703a222f4573"
    end
    on_intel do
      url "https://github.com/make-wave/wave/releases/download/v0.1.2/wave-macos-x86_64"
      sha256 "64999c20505ab8970f71a10ce9903f6b8668b2f7dc35447c07faf30e77b82efd"
    end
  end

  on_linux do
    url "https://github.com/make-wave/wave/releases/download/v0.1.2/wave-linux-x86_64"
      sha256 "272da209f1826907878e0db4fd6eb02d7560a82f933c66bc6adc2ae14eb777cb"
  end

  def install
    bin.install Dir["wave*"].first => "wave"
  end

  test do
    assert_match "wave", shell_output("#{bin}/wave --help")
  end
end
