class Wave < Formula
  desc "An HTTP client for folks who like their terminal"
  homepage "https://github.com/make-wave/wave"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/make-wave/wave/releases/download/v0.2.1/wave-macos-arm64"
    sha256 "273f82bce755fa379889cdeb9a2546776286d7aa4cce18708fffe5ed192a3c70"
    end
    on_intel do
      url "https://github.com/make-wave/wave/releases/download/v0.2.1/wave-macos-x86_64"
    sha256 "463319110d09317f4ef492a1ae1b48e57ccf6a731a8ae05fcdecfd7cbc7b4ce6"
    end
  end

  on_linux do
    url "https://github.com/make-wave/wave/releases/download/v0.2.1/wave-linux-x86_64"
    sha256 "5005c5644e0993a6c2b1289087680ccc9e1d777639c3c05dfdbcc28f75fe73b4"
  end

  def install
    bin.install Dir["wave*"].first => "wave"
  end

  test do
    assert_match "wave", shell_output("#{bin}/wave --help")
  end
end
