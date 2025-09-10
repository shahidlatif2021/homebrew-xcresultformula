class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "2.0.8"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v2.0.8/XCResultParser.tar.gz"
  sha256 "084e878254f58dba391fc44a636eb08a2dbaf526a2d82d7dc7a5aa8ba2ed22ac"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end
