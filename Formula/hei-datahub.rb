class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.11b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.11b/hei-datahub-0.65.11b-macos-arm64.tar.gz"
      sha256 "ac9bfdabfe95665d4f59568f1263236835dc901aa6b5f9de67d7be474111ceec"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.11b/hei-datahub-0.65.11b-macos-x86_64.tar.gz"
      sha256 "52ae6ff9b0c3f20d6ad15f88dcd704e12bbe09ad91159817a874b1b2972ee157"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
