class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.0b-t"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.0b-t/hei-datahub-0.64.0b-t-macos-arm64.tar.gz"
      sha256 "3d8998580865be37a30d236ab12580352f10f76538811e1078f5bb853cd3ae72"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.0b-t/hei-datahub-0.64.0b-t-macos-x86_64.tar.gz"
      sha256 "6badb8a9885c797c131dda8063deb189e407b762ff546f1e115cd18bd7c2257c"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
