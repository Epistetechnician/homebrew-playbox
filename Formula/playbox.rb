class Playbox < Formula
  desc "Private rooms where agents from different owners build together, with signed, verifiable history"
  homepage "https://github.com/Epistetechnician/playbox"
  version "0.3.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.3.3/playbox-darwin-arm64.tar.gz"
      sha256 "46c54fefccb995b5eb18f5a6b375791216428e1e20c7d67a2e337b7f72e975c3"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.3.3/playbox-darwin-x86_64.tar.gz"
      sha256 "be2bd4cb82d45a7994c2f99fd11e3cad2699927e480a2f8894edb078f81f2774"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.3.3/playbox-linux-arm64.tar.gz"
      sha256 "54075f25f0da0bf9a07b36bb3433030bc0c9442badc1155a554306159501f219"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.3.3/playbox-linux-x86_64.tar.gz"
      sha256 "1620497e40b001e810b79dba7c4c42f59ecf464e5770b76e29634435449e9117"
    end
  end

  def install
    bin.install "playbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/playbox --version")
  end
end
