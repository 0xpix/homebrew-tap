class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.1b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.1b/hei-datahub-0.64.1b-macos-arm64.tar.gz"
      sha256 "6893e48fa27e6d17fcfecdcad1cf0705deb2faeb437f0b846a0ecf510df4adc4"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.1b/hei-datahub-0.64.1b-macos-x86_64.tar.gz"
      sha256 "e6878e2a0a0d6d1e3c424cebd16a94eb32f215dc919c113f1e6a729eea1bfe42"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
