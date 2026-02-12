class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.25b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.25b/hei-datahub-0.64.25b-macos-arm64.tar.gz"
      sha256 "2350965b76cae54f2a2664e1a84b221c1527ca8fb4fcfa5cc91e0ef4addf5165"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.25b/hei-datahub-0.64.25b-macos-x86_64.tar.gz"
      sha256 "7f00cab469b5d7436d7b29480775877a7e0b06a995a97e09062539ca8cd3f0fd"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
