class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.31b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.31b/hei-datahub-0.65.31b-macos-arm64.tar.gz"
      sha256 "01439da9859fc0015cad6588242b5a77dedda3038ed2cde4f982646afdbaa82b"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.31b/hei-datahub-0.65.31b-macos-x86_64.tar.gz"
      sha256 "156e8189577d74d232ff71407b1af6619845f1b9f5d6d4f3eecbf8d0a7e5f7b5"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
