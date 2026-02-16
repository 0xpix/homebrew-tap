class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.13b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.13b/hei-datahub-0.65.13b-macos-arm64.tar.gz"
      sha256 "75a9e1e28638597caf6118a5b2c5fe7bc97fd9c8f85a502265760fa88537e17d"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.13b/hei-datahub-0.65.13b-macos-x86_64.tar.gz"
      sha256 "7641ac8ef67ac99c6961eb569961dd465a66f7953a86dcf58248d21014808707"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
