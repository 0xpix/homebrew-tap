class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.12b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.12b/hei-datahub-0.65.12b-macos-arm64.tar.gz"
      sha256 "f72827ba374f2484e191654cdcf750defc34bcb1b277e9e624875643119d60a3"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.12b/hei-datahub-0.65.12b-macos-x86_64.tar.gz"
      sha256 "f224b31b9933a5a7b25852801996f65e7cdaaab4703da62495e1fafc1972700d"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
