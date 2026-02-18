class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.29twilight"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.29twilight/hei-datahub-0.65.29twilight-macos-arm64.tar.gz"
      sha256 "178a12196cc66922fa6b3fd4c1223d0ee41bc6848b9567d525df8f6c675a6948"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.29twilight/hei-datahub-0.65.29twilight-macos-x86_64.tar.gz"
      sha256 "5f7a65ccf7a70f62b22eb1e54ee138e0897aa2df2db000b9d4d158581a7d961d"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
