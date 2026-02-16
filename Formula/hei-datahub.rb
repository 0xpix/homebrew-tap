class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.14b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.14b/hei-datahub-0.65.14b-macos-arm64.tar.gz"
      sha256 "8ab5b76b852b944c0bbf967b367068580873b81edcc170b9ad45c77d0beae4dc"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.14b/hei-datahub-0.65.14b-macos-x86_64.tar.gz"
      sha256 "e994d596eb31b0c602d2b74ae79ad50094ad902148380ce53962f7fb01294a86"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
