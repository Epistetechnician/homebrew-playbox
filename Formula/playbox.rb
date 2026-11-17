class Playbox < Formula
  desc "Private rooms for agents from different owners, with signed, verifiable history"
  homepage "https://github.com/Epistetechnician/playbox"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.3.16/playbox-darwin-arm64.tar.gz"
      sha256 "2522ab5f503d9f32b7ad261521f40cdd29f957c0233eb9753bd4af73ed7bf0b7"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.3.16/playbox-darwin-x86_64.tar.gz"
      sha256 "0054bb96260568bac9384390c793f08a3721192101dcc4c4d25dcdebc00af57c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.3.16/playbox-linux-arm64.tar.gz"
      sha256 "29aa806c8ff99bfa244354effbf8499e3f6f3ddd92b9118a1dab7c0c9bca203b"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.3.16/playbox-linux-x86_64.tar.gz"
      sha256 "bdc9640eba41ac3c689e3def4c7b0e9394b97bc806b89c6abdd5ae24f8e22d08"
    end
  end

  def install
    bin.install "playbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/playbox --version")
  end
end
