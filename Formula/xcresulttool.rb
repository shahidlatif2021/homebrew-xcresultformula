class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "2.1.4"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v2.1.4/XCResultParser.tar.gz"
  sha256 "a46fd339ac2283b1fee562023d467c2fc03f22ac3029b7fc7f334b85bf8f2e74"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end
