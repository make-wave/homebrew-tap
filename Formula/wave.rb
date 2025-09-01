class Wave < Formula
  desc "An HTTP client for folks who like their terminal"
  homepage "https://github.com/make-wave/wave"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/make-wave/wave/releases/download/v0.1.0/wave-macos-arm64"
      sha256 "2cab8fb89a09dee347ab062f63f0db7d6016db9e215990c2d73e00864ef8b775"
    end
    on_intel do
      url "https://github.com/make-wave/wave/releases/download/v0.1.0/wave-macos-x86_64"
      sha256 "4a2943a23827597a26c1e19f4b0ffba875c738308cb149b4fbf29b9f4b1360cf"
    end
  end

  on_linux do
    url "https://github.com/make-wave/wave/releases/download/v0.1.0/wave-linux-x86_64"
      sha256 "75c852746762b5d50783a49f1e71953df9a6ed96eab57f446a6a4a761359a44e"
  end

  def install
    bin.install Dir["wave*"].first => "wave"
  end

  test do
    assert_match "wave", shell_output("#{bin}/wave --help")
  end
end
