class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.11b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.11b/hei-datahub-0.64.11b-macos-arm64.tar.gz"
      sha256 "014a31dd32451cc71a15de2105eae874e34c31fc06291bd3b0a5a1aea42ce428"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.11b/hei-datahub-0.64.11b-macos-x86_64.tar.gz"
      sha256 "2d0e781193db8198746b6c2f7edb0e2213b98c0b3cae0b090419ec602b9f8a45"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
