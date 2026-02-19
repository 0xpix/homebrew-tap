class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.30b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.30b/hei-datahub-0.65.30b-macos-arm64.tar.gz"
      sha256 "38876335bcf591d1fb4a8530bdb52ad9bb58232b25c1352b7b9c83a0c90b8445"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.30b/hei-datahub-0.65.30b-macos-x86_64.tar.gz"
      sha256 "0b3775bada3f753660e761aaa95ec13bab7e56c7fcac68a0088efca8fbfb66ad"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
