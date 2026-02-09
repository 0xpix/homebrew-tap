class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.21b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.21b/hei-datahub-0.64.21b-macos-arm64.tar.gz"
      sha256 "c6af5b7974c1b6c1ae25caa95fd8eefbb7073abe0a00a0d9d77a05b737d71c6b"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.21b/hei-datahub-0.64.21b-macos-x86_64.tar.gz"
      sha256 "9458209ab9a7aa352ec3855a94ff2a5a0ef049ceee30605b0789d17781be2827"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
