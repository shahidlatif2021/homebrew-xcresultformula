class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "2.0.8"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v2.0.8/XCResultParser.tar.gz"
  sha256 "642cbdad2fef564c70a71e2563dcc24ae5122b80567bb4452be33bb1b58fab4e"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end
