class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.15b-test"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.15b-test/hei-datahub-0.64.15b-test-macos-arm64.tar.gz"
      sha256 "a47e169823397f7bf97d4b78bc17444454fb6096e08f96d9cf401d3658d1e8fd"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.15b-test/hei-datahub-0.64.15b-test-macos-x86_64.tar.gz"
      sha256 "932cc44974146a7b8e029ab77283dfc37241a28c349b41c04107e81a9b70aa66"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
