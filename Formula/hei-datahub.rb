class HeiDatahub < Formula
  desc "Hei-DataHub: dataset inventory TUI"
  homepage "https://github.com/0xpix/hei-datahub"
  version "0.64.23b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.23b/hei-datahub-0.64.23b-macos-arm64.tar.gz"
      sha256 "121ffca28432e7b651592c5dd41d95511871fa68ac11dd47a0a807adfe7bb0a0"
    else
      url "https://github.com/0xpix/Hei-DataHub/releases/download/0.64.23b/hei-datahub-0.64.23b-macos-x86_64.tar.gz"
      sha256 "972968fe2c06381f8c09994bed885907144bc9dd379f3beafd9bba363390d126"
    end
  end

  def install
    bin.install "hei-datahub"
  end

  test do
    system "#{bin}/hei-datahub", "--version"
  end
end
