class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.18b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.18b/hei-datahub-0.64.18b-macos-arm64.tar.gz"
      sha256 "5d70e3ae82af28df3ffc9b381b592f54b40c3711c1251814dd02ca1659d0c807"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.18b/hei-datahub-0.64.18b-macos-x86_64.tar.gz"
      sha256 "7235d7029844b6f72c5f9707e342d67805c431df3892ebdc3eab83ec09c419ff"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
