class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.23b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.23b/hei-datahub-0.65.23b-macos-arm64.tar.gz"
      sha256 "03287e7ce0fd9097811a6f2a010c753dda50855b5305aea8caed2bd65fc7bf44"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.23b/hei-datahub-0.65.23b-macos-x86_64.tar.gz"
      sha256 "e529e68b75019ef6b3c776507f32cdc8e44a28d8b7c20ee84449f79e0466dfbe"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
