class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.2b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.2b/hei-datahub-0.65.2b-macos-arm64.tar.gz"
      sha256 "d717ca3c2bfc276b62bbe2f0c8aa31be9ee0366d7bb41f10324b79b58e3e32da"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.2b/hei-datahub-0.65.2b-macos-x86_64.tar.gz"
      sha256 "161e0eb5c68d87fcfbe5657d88ddd867b6aee8908a6ab08fee14f1007edab77c"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
