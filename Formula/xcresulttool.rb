class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "2.0.1"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v2.0.1/XCResultParser.tar.gz"
  sha256 "774d1596569be0f852aa8c7eb682fd7ebb13a6b13d8a974bc9573836909dd878"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end
