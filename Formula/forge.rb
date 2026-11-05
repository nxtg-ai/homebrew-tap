class Forge < Formula
  desc "Universal orchestration engine for AI-powered development"
  homepage "https://github.com/nxtg-ai/forge-orchestrator"
  version "1.8.0"
  license "FSL-1.1-ALv2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-macos-aarch64.tar.gz"
      sha256 "4abec5c15e7a67d0d0bfb7a4ad873994947e46695aec73cafda5450bdd90b878"
    else
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-macos-x86_64.tar.gz"
      sha256 "794f33452826e0a80ae152022b571db95b01ebd759e634b436cdc9a1184c0481"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-linux-aarch64.tar.gz"
      sha256 "79aa16348a44dc479542a256d89bd056bd67cddd3603b2c21477d06cfe0a8f23"
    else
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-linux-x86_64.tar.gz"
      sha256 "8402edd46fdc1d4c26b7567c4b620490814722d3aa610917f455351f056f847e"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "forge #{version}", shell_output("#{bin}/forge --version")
  end
end
