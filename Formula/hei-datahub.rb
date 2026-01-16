class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.0b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.0b/hei-datahub-0.64.0b-macos-arm64.tar.gz"
      sha256 "c2df74989ffaced2c0b87370202de44a391d79c25cba90e8c7b361eb0024e055"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.0b/hei-datahub-0.64.0b-macos-x86_64.tar.gz"
      sha256 "6f2c9b4aeac2813ecc30c4a05b5a2ea9efae9f92e4289455d3a69fc6480be591"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
