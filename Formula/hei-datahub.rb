class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.2b-t"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/hei-datahub/releases/download/v0.64.2b-t/hei-datahub-0.64.2b-t-macos-arm64.tar.gz"
      sha256 "cfce60380ff604f81ba5db041e68ae936d48bf95a47806d51b96c7473eb19e63"
    else
      url "https://github.com/0xpix/hei-datahub/releases/download/v0.64.2b-t/hei-datahub-0.64.2b-t-macos-x86_64.tar.gz"
      sha256 "9ceb6ceb73619ea8b6a56ed0651d0e4baa6f970f253432d59a795db31ac16762"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
