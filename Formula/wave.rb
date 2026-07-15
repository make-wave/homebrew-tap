class Wave < Formula
  desc "An HTTP client for folks who like their terminal"
  homepage "https://github.com/make-wave/wave"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/make-wave/wave/releases/download/v0.2.0/wave-macos-arm64"
    sha256 "c627835090f345a02f80c1495c719719a7ea353745d367fe71e773cefab37e5c"
    end
    on_intel do
      url "https://github.com/make-wave/wave/releases/download/v0.2.0/wave-macos-x86_64"
    sha256 "b50ffb7a8aab864bcbabc10f8cc5124dc630741306a227b72e60060c0bb66db2"
    end
  end

  on_linux do
    url "https://github.com/make-wave/wave/releases/download/v0.2.0/wave-linux-x86_64"
    sha256 "ea271e19ee2c507577313672690ee4ed9a4c1df8edc646f25996fdd37fe78759"
  end

  def install
    bin.install Dir["wave*"].first => "wave"
  end

  test do
    assert_match "wave", shell_output("#{bin}/wave --help")
  end
end
