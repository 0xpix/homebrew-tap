class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.65.24b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.24b/hei-datahub-0.65.24b-macos-arm64.tar.gz"
      sha256 "2464aeeb705219c65922f2553af2a9a4367a88566c24a7551e976279ac6a860a"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.65.24b/hei-datahub-0.65.24b-macos-x86_64.tar.gz"
      sha256 "74624c35f493b19f927b4f3df4786eddb5ccaa0dd691ed1dbe424d6431fb3498"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
