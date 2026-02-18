class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.21b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.21b/hei-datahub-0.65.21b-macos-arm64.tar.gz"
      sha256 "2add38f29d6a4a5e05d406e53b48dcfa427152552c826047d1fe4e00b686bd54"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.21b/hei-datahub-0.65.21b-macos-x86_64.tar.gz"
      sha256 "8a9781e4cdbeb3de1b772b065962b39e717c92de64534e90dffca521e0b05a41"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
