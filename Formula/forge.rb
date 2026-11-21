class Forge < Formula
  desc "Universal orchestration engine for AI-powered development"
  homepage "https://github.com/nxtg-ai/forge-orchestrator"
  version "1.8.1"
  license "FSL-1.1-ALv2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-macos-aarch64.tar.gz"
      sha256 "f4149e3b9b3cbdac21a0fe25f74b51c086802f1e81606d18e29b5c4d4e9d2c85"
    else
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-macos-x86_64.tar.gz"
      sha256 "fbae0fc73c587797ffa6dc55d05cac7fc5d0a7d56a0a6876e1a716a9d14198cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-linux-aarch64.tar.gz"
      sha256 "3078c980ad3888eb54c29e383e86be170a256bd564f5a3f01ec8a7cb6781b107"
    else
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-linux-x86_64.tar.gz"
      sha256 "0dc65b57af88ff2e8b1611420bbadb2b726a479024b7df524ad1e51055d3170d"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "forge #{version}", shell_output("#{bin}/forge --version")
  end
end
