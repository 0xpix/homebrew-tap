class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.11b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.11b/hei-datahub-0.64.11b-macos-arm64.tar.gz"
      sha256 "81129d27f08e3b81ef4c8bcb3dce311ca18111f3d31e6ad209d5e60d0a226183"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.11b/hei-datahub-0.64.11b-macos-x86_64.tar.gz"
      sha256 "10b66c6bd530aacf6bc7e8cfd209ae77cb157a9d650189f8e80473a22bab75d7"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
