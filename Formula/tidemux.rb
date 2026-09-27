class Tidemux < Formula
  desc "Local OpenAI and Anthropic compatible API gateway"
  homepage "https://github.com/hs3180/tidemux"
  url "https://github.com/hs3180/tidemux/releases/download/v0.2.0/tidemux_0.2.0_darwin_arm64.tar.gz"
  sha256 "d668d6432dbc4fea9b8784a84b4ce38ace46b9738ebb1abf4218d0619102a6ab"
  license "Apache-2.0"
  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "tidemux"
    pkgshare.install "docs", "licenses", "sbom.spdx.json", "BUILD.txt", "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md"
  end

  test do
    assert_equal "0.2.0", shell_output("#{bin}/tidemux version").strip
  end
end
