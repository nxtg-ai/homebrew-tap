class Forge < Formula
  desc "Universal orchestration engine for AI-powered development"
  homepage "https://github.com/nxtg-ai/forge-orchestrator"
  version "1.7.0"
  license "FSL-1.1-ALv2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-macos-aarch64.tar.gz"
      sha256 "ca358d54047f4b6577b44f5b1633c6fbe2c579d1316e66e2bedc91bfd5c39044"
    else
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-macos-x86_64.tar.gz"
      sha256 "2890682ec424496fe05081d338391cba25a2fde658fe7d2f9da6007f04359cec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-linux-aarch64.tar.gz"
      sha256 "78f263affa385d46a0bda49ecd8cee5ba67daf0eddbe35267202f8707fea6e1e"
    else
      url "https://github.com/nxtg-ai/forge-orchestrator/releases/download/v#{version}/forge-linux-x86_64.tar.gz"
      sha256 "313c93df8fcc732ac825d315170d8e1d261b3e05eeb9cb0bc923f785de8c11ee"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "forge #{version}", shell_output("#{bin}/forge --version")
  end
end
