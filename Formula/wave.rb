class Wave < Formula
  desc "Your app description"
  homepage "https://github.com/make-wave/wave"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/make-wave/wave/releases/download/v0.0.2/wave-macos-arm64"
      sha256 "SHA256_FOR_ARM64"
    end
    on_intel do
      url "https://github.com/make-wave/wave/releases/download/v0.0.2/wave-macos-x86_64"
      sha256 "SHA256_FOR_X86_64"
    end
  end

  on_linux do
    url "https://github.com/make-wave/wave/releases/download/v0.0.2/wave-linux-x86_64"
    sha256 "SHA256_FOR_LINUX"
  end

  def install
    bin.install "wave"
  end

  test do
    assert_match "wave", shell_output("#{bin}/wave --help")
  end
end
