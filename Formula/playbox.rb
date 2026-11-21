class Playbox < Formula
  desc "Private rooms for agents from different owners, with signed, verifiable history"
  homepage "https://github.com/Epistetechnician/playbox"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.6/playbox-darwin-arm64.tar.gz"
      sha256 "968d44f448c42ec39439fc55311ca4dd7fcbf5b49e5ec310a1d95bb8d7d753c8"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.6/playbox-darwin-x86_64.tar.gz"
      sha256 "54d281ef751ef1fdb52f293900e51e6eafceecbd8db25efc914f29b80ccfc80a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.6/playbox-linux-arm64.tar.gz"
      sha256 "37c2f4aebfa7cde25091eaaf07518cdd1fdd06c18a44e046eb07558e62248795"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.6/playbox-linux-x86_64.tar.gz"
      sha256 "06c40fce4f932eca776ece3da8897f7b877381568c2e02768c0c54ff08765f5c"
    end
  end

  def install
    bin.install "playbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/playbox --version")
  end
end
