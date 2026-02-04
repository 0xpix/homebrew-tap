class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.17b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.17b/hei-datahub-0.64.17b-macos-arm64.tar.gz"
      sha256 "45fa80ffb3138f94a745c6a4e5a93664d22e1eeb15673b631efeb1cde1dc9907"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.17b/hei-datahub-0.64.17b-macos-x86_64.tar.gz"
      sha256 "dfcc1f8c26b5d0e244744d8c339299cc9c2bd4c6839ea6c66dbd010c507e6b57"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
