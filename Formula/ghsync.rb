class Ghsync < Formula
  desc "GitHub Issues synchronization tool"
  homepage "https://github.com/fionaguoguolu/ghsync"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fionaguoguolu/ghsync/releases/download/v0.1.0/ghsync-darwin-amd64"
      sha256 "TODO: Add SHA256 after first release"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fionaguoguolu/ghsync/releases/download/v0.1.0/ghsync-darwin-arm64"
      sha256 "TODO: Add SHA256 after first release"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fionaguoguolu/ghsync/releases/download/v0.1.0/ghsync-linux-amd64"
      sha256 "TODO: Add SHA256 after first release"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fionaguoguolu/ghsync/releases/download/v0.1.0/ghsync-linux-arm64"
      sha256 "TODO: Add SHA256 after first release"
    end
  end

  def install
    bin.install Dir["ghsync-*"].first => "ghsync"
  end

  test do
    system "#{bin}/ghsync", "--version"
  end
end 