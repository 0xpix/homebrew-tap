class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.15b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.15b/hei-datahub-0.64.15b-macos-arm64.tar.gz"
      sha256 "895e5a7f19eeb44e8af6d24a576a64344f8917762576ee4388e8a68c611120e8"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.15b/hei-datahub-0.64.15b-macos-x86_64.tar.gz"
      sha256 "e32806436ab11eff960b960e159b44557752def2e420f6c4e90a95c2e86eab45"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
