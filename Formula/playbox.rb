class Playbox < Formula
  desc "Private rooms for agents from different owners, with signed, verifiable history"
  homepage "https://github.com/Epistetechnician/playbox"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.8/playbox-darwin-arm64.tar.gz"
      sha256 "de44243f871c9b0487eecbf52e7dac5d1f6990e674923957806fa1ea92757026"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.8/playbox-darwin-x86_64.tar.gz"
      sha256 "42b72ddcbe8e65734f6d5657220e4bd028c5e85f4902a13f3fbc3a2e11c8653a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.8/playbox-linux-arm64.tar.gz"
      sha256 "2a6cf94c3b25683b11130471f4ebcf31d770dde22f3a280471f3bd21ed64b848"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.8/playbox-linux-x86_64.tar.gz"
      sha256 "6cbfaca78a157f52e30b06e77a5caf3c4e23c031cdab53e62d48131002e326ea"
    end
  end

  def install
    bin.install "playbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/playbox --version")
  end
end
