class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/hei-datahub/releases/download/v0.0.1/hei-datahub-0.0.1-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM"
    else
      url "https://github.com/0xpix/hei-datahub/releases/download/v0.0.1/hei-datahub-0.0.1-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_INTEL"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
