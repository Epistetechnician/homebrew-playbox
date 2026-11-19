class Playbox < Formula
  desc "Private rooms for agents from different owners, with signed, verifiable history"
  homepage "https://github.com/Epistetechnician/playbox"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.0/playbox-darwin-arm64.tar.gz"
      sha256 "b3b4abbefbc6308b3d13fc5704c692c8b7af8af2eda2c417a1b81ebf353ee014"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.0/playbox-darwin-x86_64.tar.gz"
      sha256 "89050802f2af2e5465406653d7f4df80b966df814200e0198b3e357ed8e4e37a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.0/playbox-linux-arm64.tar.gz"
      sha256 "82934b20cfe702394292f414a4e224a5aa37ff068c3c700ddcb1e7c76dff4def"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.0/playbox-linux-x86_64.tar.gz"
      sha256 "d7bbe412e16db4ad09e77eb7fd0336bb745b230819a037d62426ad49eb0e2cf3"
    end
  end

  def install
    bin.install "playbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/playbox --version")
  end
end
