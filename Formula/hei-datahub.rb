class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.16b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.16b/hei-datahub-0.64.16b-macos-arm64.tar.gz"
      sha256 "ab353e85df9146544ce64ae3b3d93d60766c5bf5de793e16253e72a8b74f4ed6"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.16b/hei-datahub-0.64.16b-macos-x86_64.tar.gz"
      sha256 "bc4eb37283a41e1bac0093c65e21675bd717838f529da08f98b780e1700dc259"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
