class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "2.0.9"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v2.0.9/XCResultParser.tar.gz"
  sha256 "1deceaf4bc6867d7c00fe2077f8b2aa630a2061954d33c43b4485388984527df"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end
