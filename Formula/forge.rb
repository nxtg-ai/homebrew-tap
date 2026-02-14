class Forge < Formula
  desc "Universal coordination engine for AI-powered development"
  homepage "https://github.com/nxtg-ai/forge-orchestrator"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-macos-aarch64.tar.gz"
      sha256 "487b0e199b9ea120c2e381eb087bfed7adf259b7e516f09cc110603f6e23bd6d"
    else
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-macos-x86_64.tar.gz"
      sha256 "6430e60385d05c7800b361056b64f61188497bb6e20df5f96436591cc0fc2c4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-linux-aarch64.tar.gz"
      sha256 "374e360a243d6d7989b8301df771f9b3f8b4ab782bff3f1976b38c727043089a"
    else
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-linux-x86_64.tar.gz"
      sha256 "169b91715aae50df5d75ffe81d79da49c979ed0486f8064b86eff693a7ed4a16"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "forge #{version}", shell_output("#{bin}/forge --version")
  end
end
