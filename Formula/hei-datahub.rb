class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.22b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.22b/hei-datahub-0.64.22b-macos-arm64.tar.gz"
      sha256 "d60db65709da1af915ae1982360de6b93af9c6459d41282e9af3c638af2e3b29"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.22b/hei-datahub-0.64.22b-macos-x86_64.tar.gz"
      sha256 "3962c07332d737c34ebe2d1c66a9c4ef67afef7ec2c14a9369c15681f1389b61"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
