class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.24b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.24b/hei-datahub-0.64.24b-macos-arm64.tar.gz"
      sha256 "f567cf73fa267188e30396f6a7e9c65b1d950c58c67b6050255624739337bc13"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.24b/hei-datahub-0.64.24b-macos-x86_64.tar.gz"
      sha256 "8dcc5f3a2d0e7f7123075d616ca7c04b076e75ed704cc79bb0c2e540362bb1d5"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
