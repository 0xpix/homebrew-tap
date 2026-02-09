class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.20b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.20b/hei-datahub-0.64.20b-macos-arm64.tar.gz"
      sha256 "a9dd78a8999d54e3af7fbf5a5fcc316da8c6d6d71df459e3e7469c6d79b8ccc4"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.20b/hei-datahub-0.64.20b-macos-x86_64.tar.gz"
      sha256 "727cf5689fd496b4a2b2e7a637fb0719c1381fcb1c7120c5d252861c5f0bd155"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
