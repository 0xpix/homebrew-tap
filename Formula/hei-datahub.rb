class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.26b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.26b/hei-datahub-0.65.26b-macos-arm64.tar.gz"
      sha256 "21ba934f288c9ac61df0178c45170afe6da1cea14fea0e49559e62616ed3c266"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.26b/hei-datahub-0.65.26b-macos-x86_64.tar.gz"
      sha256 "aabda448b8759f4be022840fcf26c7e5024c57b94e41d9dfd12d7cd62bb39a79"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
