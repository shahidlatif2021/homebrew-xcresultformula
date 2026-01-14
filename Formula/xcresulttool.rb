class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "2.1.1"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v2.1.1/XCResultParser.tar.gz"
  sha256 "e1918a4a85145c661efcdffa23e1956dbc402d5683ff68c7b6f650da9eb4b0a5"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end
