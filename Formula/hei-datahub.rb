class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.22b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.22b/hei-datahub-0.65.22b-macos-arm64.tar.gz"
      sha256 "877e326bdfa20d332fc2fbcc70a0780a1a317cb6780f4770cb8f06fe3adb3794"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.22b/hei-datahub-0.65.22b-macos-x86_64.tar.gz"
      sha256 "5bb4dd1aa582bda916c49d3cea42c046741b0f6c5120205c3163e6c119f3becd"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
