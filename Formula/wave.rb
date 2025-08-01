class Wave < Formula
  desc "Your app description"
  homepage "https://github.com/make-wave/wave"
  url "https://github.com/make-wave/wave/releases/download/v0.0.1/wave-macos-latest"
  sha256 "c6fbdc78a55352f6bdd68297bcf917b9dc6c1e2d528c87c50c0b2021f37b4ce2"
  license "MIT"
  version "0.0.1"

  def install
    bin.install "wave-macos-latest" => "wave"
  end

  test do
    assert_match "wave", shell_output("#{bin}/wave --help")
  end
end
