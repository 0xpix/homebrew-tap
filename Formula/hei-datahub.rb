class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.29b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.29b/hei-datahub-0.65.29b-macos-arm64.tar.gz"
      sha256 "0a51d9fa7749cd47bed4f4e130fc33babf5ff049810a9f1e0c4f0f14e389e3f1"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.29b/hei-datahub-0.65.29b-macos-x86_64.tar.gz"
      sha256 "9226af4643c36ee3eca4ca8a7856c434d96c3011368de7ff753e4c90e53b85b0"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
