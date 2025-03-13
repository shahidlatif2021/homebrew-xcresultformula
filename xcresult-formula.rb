class xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  url "https://github.com/shahidlatif2021/xcresultformula/blob/develop/XCResultParser.tar.gz"
  sha256 "e6223d81fc5661502f942df5d8c24c9cdb21e2f2864ba6fad453bb55dd85f269"
  license "MIT"

  depends_on "swift" # If your app depends on Swift

  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end