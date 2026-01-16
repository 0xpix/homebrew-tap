class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.0b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.0b/hei-datahub-0.64.0b-macos-arm64.tar.gz"
      sha256 "39353d0051b397bd4ae5f4b3564e54824698486272b5fc22c33fc390d2791781"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.0b/hei-datahub-0.64.0b-macos-x86_64.tar.gz"
      sha256 "1797f8b986cecee57f95e58f2dcc2918ace794089866b4d750e9ac8011502005"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
