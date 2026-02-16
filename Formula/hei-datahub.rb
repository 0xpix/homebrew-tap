class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.1b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.1b/hei-datahub-0.65.1b-macos-arm64.tar.gz"
      sha256 "1805587ab3d3c3df042c64197b274ef9f0933c015cdec188a5e086b757fe6754"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.1b/hei-datahub-0.65.1b-macos-x86_64.tar.gz"
      sha256 "ec15746f5da5617a033b79941f9f52873eb60db20e19a8e00c8e50fdab91ab95"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
