class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.27b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.27b/hei-datahub-0.65.27b-macos-arm64.tar.gz"
      sha256 "8b42038da1d597befaa65491940e784671419e072d05997313c9cf5a1d120e2f"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.27b/hei-datahub-0.65.27b-macos-x86_64.tar.gz"
      sha256 "fd6fc88ca39021bd691e565ac8807043acf1aa445282dff86d22a15cc4f0dacd"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
