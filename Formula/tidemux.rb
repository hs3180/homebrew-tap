class Tidemux < Formula
  desc "Local OpenAI and Anthropic compatible API gateway"
  homepage "https://github.com/hs3180/tidemux"
  url "https://github.com/hs3180/tidemux/releases/download/v0.2.1/tidemux_0.2.1_darwin_arm64.tar.gz"
  version "0.2.1"
  sha256 "c95b1f0586ccb1a22766a99bccec99acf5d7175c643e7d8622e0242bbac55886"
  license "Apache-2.0"
  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "tidemux"
    pkgshare.install "docs", "licenses", "sbom.spdx.json", "BUILD.txt", "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md"
  end

  test do
    assert_equal "0.2.1", shell_output("#{bin}/tidemux version").strip
  end
end
