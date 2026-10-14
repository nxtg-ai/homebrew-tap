class Forge < Formula
  desc "Universal orchestration engine for AI-powered development"
  homepage "https://github.com/nxtg-ai/forge-orchestrator"
  version "1.6.3"
  license "FSL-1.1-ALv2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-macos-aarch64.tar.gz"
      sha256 "6dd11e4ce8489e3282a0e45dd9e3a7c9dabc64c55c1ffdf3e09a9154edb48c5a"
    else
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-macos-x86_64.tar.gz"
      sha256 "194e718022229c93a441a68a29e96f0cd45eb39b20c896b69033e34db052c246"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-linux-aarch64.tar.gz"
      sha256 "b4860147198b88c2849745d65d30c048f12104c0341d23c61e2bb836a5f266ad"
    else
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-linux-x86_64.tar.gz"
      sha256 "2827fe92da82abbc24f4cc9d87adf1287c5cc712ef9545095a9b9ac2f23a5305"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "forge #{version}", shell_output("#{bin}/forge --version")
  end
end
