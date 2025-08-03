class Wave < Formula
  desc "Your app description"
  homepage "https://github.com/make-wave/wave"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/make-wave/wave/releases/download/v0.0.5/wave-macos-arm64"
      sha256 "2987640826723f569e3ecc0aa275a39f30c9f009b852a89eb1686d1581988426"
    end
    on_intel do
      url "https://github.com/make-wave/wave/releases/download/v0.0.5/wave-macos-x86_64"
      sha256 "fc18f49e7a17f313edd2f0b247806a035bb08d95cdc64b6a1008a9fa62142647"
    end
  end

  on_linux do
    url "https://github.com/make-wave/wave/releases/download/v0.0.5/wave-linux-x86_64"
    sha256 "fbc89b59336de209dcbd5ad1c5a0de525eb6dabc8e67be15b8302519565bbaaa"
  end

  def install
    bin.install Dir["wave*"].first => "wave"
  end

  test do
    assert_match "wave", shell_output("#{bin}/wave --help")
  end
end
