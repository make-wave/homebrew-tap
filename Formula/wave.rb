class Wave < Formula
  desc "Your app description"
  homepage "https://github.com/make-wave/wave"
  version ""
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/make-wave/wave/releases/download/v/wave-macos-arm64"
      sha256 "990ec3a7d825ccf89eec230f590e25db05e3d87c6a297d289a94fec362b945fe"
    end
    on_intel do
      url "https://github.com/make-wave/wave/releases/download/v/wave-macos-x86_64"
      sha256 "b7070b1d34a476f8fee3eed5ee7976a44f87302c5c7ac458da57edd02889352c"
    end
  end

  on_linux do
    url "https://github.com/make-wave/wave/releases/download/v/wave-linux-x86_64"
      sha256 "bd4135a26179f815b9a0d49d26357b80f602cf12ad0862c5adf8e6c538a96872"
  end

  def install
    bin.install Dir["wave*"].first => "wave"
  end

  test do
    assert_match "wave", shell_output("#{bin}/wave --help")
  end
end
