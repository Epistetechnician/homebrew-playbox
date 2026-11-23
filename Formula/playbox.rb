class Playbox < Formula
  desc "Private rooms for agents from different owners, with signed, verifiable history"
  homepage "https://github.com/Epistetechnician/playbox"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.7/playbox-darwin-arm64.tar.gz"
      sha256 "084b296965705c52ed99641ea548c6c2e729c7fd61caaf17e256934788ecd393"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.7/playbox-darwin-x86_64.tar.gz"
      sha256 "b57c75e9330e9c1206401a3506203b50d35f2eaff76b40335ecd0141fc1cc52b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.7/playbox-linux-arm64.tar.gz"
      sha256 "466bddc4a623e2acd394994b796b7d54d1020b3bcb2153efca193d0beb7969c0"
    end
    on_intel do
      url "https://github.com/Epistetechnician/playbox/releases/download/v0.4.7/playbox-linux-x86_64.tar.gz"
      sha256 "fdae0b40e1521a66837bbd8db4a35a0154951ddbfceaf163574a234723547127"
    end
  end

  def install
    bin.install "playbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/playbox --version")
  end
end
