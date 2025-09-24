class Wave < Formula
  desc "An HTTP client for folks who like their terminal"
  homepage "https://github.com/make-wave/wave"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/make-wave/wave/releases/download/v0.1.1/wave-macos-arm64"
      sha256 "cbe64f1ee18b318d4f34f3fa3fd89233344752144be2bd38a09d95bc087d2c59"
    end
    on_intel do
      url "https://github.com/make-wave/wave/releases/download/v0.1.1/wave-macos-x86_64"
      sha256 "ee2c721c73848315b76a9ef3ec49ef6ae53ce984ad79a8fca0618dd87e7ae290"
    end
  end

  on_linux do
    url "https://github.com/make-wave/wave/releases/download/v0.1.1/wave-linux-x86_64"
      sha256 "6c62b7833704a9980e1640c46194f0cb0dc41e046ca6a81e2999194be18cc4b3"
  end

  def install
    bin.install Dir["wave*"].first => "wave"
  end

  test do
    assert_match "wave", shell_output("#{bin}/wave --help")
  end
end
