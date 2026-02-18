class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.28b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.28b/hei-datahub-0.65.28b-macos-arm64.tar.gz"
      sha256 "41cb75b64e834fa0294362888ddecd33e1023ac0a56a94f8a307df47ff486b00"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.28b/hei-datahub-0.65.28b-macos-x86_64.tar.gz"
      sha256 "4a5685f23dc0678ca8c67a1a0f812e4c553b7046ba693ca62d7870297b510356"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
