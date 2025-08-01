class Wave < Formula
  desc "Your app description"
  homepage "https://github.com/make-wave/wave"
  url "https://github.com/make-wave/wave/releases/download/v0.0.2/wave-macos-latest"
  sha256 "4b81d36ade6cb72572b7dec5582482f426b9758ad14b02056d25208c895d4113"
  license "MIT"
  version "0.0.2"

  def install
    bin.install "wave-macos-latest" => "wave"
  end

  test do
    assert_match "wave", shell_output("#{bin}/wave --help")
  end
end
