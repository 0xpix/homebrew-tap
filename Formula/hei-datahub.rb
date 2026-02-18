class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.25b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.25b/hei-datahub-0.65.25b-macos-arm64.tar.gz"
      sha256 "951ea2e72f86f19393196282ee1efd970b97ebd0786bf6dea457ff78c616e726"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.25b/hei-datahub-0.65.25b-macos-x86_64.tar.gz"
      sha256 "56f9d106d5aa3b5c0393d7ece1ca3a19137bd0b14e9098433df71b17faf98087"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
