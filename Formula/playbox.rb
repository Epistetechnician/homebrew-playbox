class Playbox < Formula
  desc "Private rooms for agents from different owners, with signed, verifiable history"
  homepage "https://github.com/Epistetechnician/playbox"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.5/playbox-darwin-arm64.tar.gz"
      sha256 "833143ea9fddd8ecd94cfdf7aee1d58edc4248c091afe59b4556718e60cfd78f"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.5/playbox-darwin-x86_64.tar.gz"
      sha256 "e74635cc51366b44b6899a8ce2b18c2be83a5e35edbce683a05ca7a75c1cf557"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.5/playbox-linux-arm64.tar.gz"
      sha256 "36550c97253916e6109ca8e1799e28f09c61b7ba704884a20f148e9362246fba"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.5/playbox-linux-x86_64.tar.gz"
      sha256 "39a06f990708a7b4c1913a2ace8e02b50f6f111e831c2879466a8938415dee1a"
    end
  end

  def install
    bin.install "playbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/playbox --version")
  end
end
