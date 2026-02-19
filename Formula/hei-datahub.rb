class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.32b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.32b/hei-datahub-0.65.32b-macos-arm64.tar.gz"
      sha256 "54b0d22a7b41f5685e88de84a0205eb82ee7a414620c3eafe832c8d339a3abea"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.32b/hei-datahub-0.65.32b-macos-x86_64.tar.gz"
      sha256 "4a15e8bf168ebfd4b7715f92a0d53ccaab4873fc1f26ee3af15a17dac9d8bd6d"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
