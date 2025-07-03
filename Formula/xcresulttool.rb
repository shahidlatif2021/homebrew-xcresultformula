class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "2.0.2"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/tag/v2.0.2/XCResultParser.tar.gz"
  sha256 "5ad41d328127b2a69dc4ab93741a3902ea67864b3445fd2293bb204273a5eb66"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end
