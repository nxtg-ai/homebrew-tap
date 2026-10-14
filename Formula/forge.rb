class Forge < Formula
  desc "Universal orchestration engine for AI-powered development"
  homepage "https://github.com/nxtg-ai/forge-orchestrator"
  version "1.6.4"
  license "FSL-1.1-ALv2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-macos-aarch64.tar.gz"
      sha256 "f51007470170ce29b38a831716843d49ae3595fdea2d8cd1eaec697e1bf0fbb9"
    else
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-macos-x86_64.tar.gz"
      sha256 "f1f8cf3446bdb6c4ab7626bc75295e350789627cb0abfd706c2d557b679e0a44"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-linux-aarch64.tar.gz"
      sha256 "7554d7f5962d525ec86c2e30d49bef72d42cf3918d87723f6d6ce3bc28f6594c"
    else
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-linux-x86_64.tar.gz"
      sha256 "7acceac94f2bce6519f44de6963b181185cacb0f79bc9344a19d9d9be6b2f378"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "forge #{version}", shell_output("#{bin}/forge --version")
  end
end
