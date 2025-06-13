class Ghsync < Formula
  desc "GitHub Issues synchronization tool"
  homepage "https://github.com/fionaguoguolu/ghsync"
  version "v0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fionaguoguolu/ghsync/releases/download/v0.0.6/ghsync-darwin-amd64"
      sha256 "db0008f006842e4365abf41e7bc1681a1129660224ecfe37965d5682792e00d1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fionaguoguolu/ghsync/releases/download/v0.0.6/ghsync-darwin-arm64"
      sha256 "5285d753c5b2673645ede4b36b22abceb5974161aa4697a4d25a59b0cf30e8e2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fionaguoguolu/ghsync/releases/download/v0.0.6/ghsync-linux-amd64"
      sha256 "806fd1f0c5c8dd70b41786329ae53a7d15da9e6d562dd5fe0147e79faea82dbf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fionaguoguolu/ghsync/releases/download/v0.0.6/ghsync-linux-arm64"
      sha256 "9b71f270555fd447fb27eed03f72d92f5d32f3f3216a0317c1631931e4c9b370"
    end
  end

  def install
    bin.install Dir["ghsync-*"].first => "ghsync"
  end

  test do
    system "#{bin}/ghsync", "--version"
  end
end 