class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.0b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.0b/hei-datahub-0.65.0b-macos-arm64.tar.gz"
      sha256 "032c8887ac81e859216f61001d6292f23ae8baa0a6735fa7c2991ee9c31953cc"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.0b/hei-datahub-0.65.0b-macos-x86_64.tar.gz"
      sha256 "10ee50b7ea8267d1c7e73c4459ba0a24e879fa246ba4e54d88af4055c8bee976"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
