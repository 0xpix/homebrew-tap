class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.24b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.24b/hei-datahub-0.65.24b-macos-arm64.tar.gz"
      sha256 "64178b141f207096023274b164e13b1370e2cbd20d6e999eb27b68cc38e2f3da"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.24b/hei-datahub-0.65.24b-macos-x86_64.tar.gz"
      sha256 "a1e128c1ce1f026af38f1cce7a8a47d1899acdcab6a3e46f9790663ba69cc709"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
