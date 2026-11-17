class Playbox < Formula
  desc "Private rooms for agents from different owners, with signed, verifiable history"
  homepage "https://github.com/Epistetechnician/playbox"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.3.15/playbox-darwin-arm64.tar.gz"
      sha256 "496db7de8eef8a0cc9c2873a25a809e2a22992f1e9675bc0c53402b810e7d154"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.3.15/playbox-darwin-x86_64.tar.gz"
      sha256 "395e290369705c0fa83db67f1d42e20847667a86adb9220d0ad67b6bbac77dab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.3.15/playbox-linux-arm64.tar.gz"
      sha256 "2dc2d95f0c13245c57a82c5486975de4da2cf894a238b32571f095ad15ac4e0a"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.3.15/playbox-linux-x86_64.tar.gz"
      sha256 "c25855e075243b7807bb67c16d479869cfb416dafff701953265fa723a227188"
    end
  end

  def install
    bin.install "playbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/playbox --version")
  end
end
