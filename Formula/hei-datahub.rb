class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.11b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.11b/hei-datahub-0.64.11b-macos-arm64.tar.gz"
      sha256 "ea22b2835d5938d9d249a2a03c71800af91b27aff947499073b37054c1121b37"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.11b/hei-datahub-0.64.11b-macos-x86_64.tar.gz"
      sha256 "551d7f4251735d90623cf891fdcbc0dae40efd159cff68696c75b9c64efd6195"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
