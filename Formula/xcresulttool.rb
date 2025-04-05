class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "1.0.8"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v1.0.8/XCResultParser.tar.gz"
  sha256 "d7cf4168279efb655147ab2756f9ff104ac505b15caff59af592ebb2af670a9d"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end