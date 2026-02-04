class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.14b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.14b/hei-datahub-0.64.14b-macos-arm64.tar.gz"
      sha256 "eb27e5b04e6b44502289c4fe96fba5f0ea9a927e0d38512edc6532870dd2d7d3"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.14b/hei-datahub-0.64.14b-macos-x86_64.tar.gz"
      sha256 "75501bcb01bf2edb0d476bde7452fd448dbc001a03f585647801dbb12e225c2a"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
