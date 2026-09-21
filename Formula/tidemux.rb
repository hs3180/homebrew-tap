class Tidemux < Formula
  desc "Local OpenAI and Anthropic compatible API gateway"
  homepage "https://github.com/hs3180/tidemux"
  url "https://github.com/hs3180/tidemux/releases/download/v0.1.1/tidemux_0.1.1_darwin_arm64.tar.gz"
  version "0.1.1"
  sha256 "83357d108cf05a67319016fbd53c4983ecc9d7e7bd43507699c5e4818f2d4bfc"
  license "Apache-2.0"
  depends_on macos: :sequoia
  depends_on arch: :arm64

  def install
    bin.install "tidemux"
    pkgshare.install "tidemux.example.json", "examples", "docs", "licenses", "scripts", "sbom.spdx.json", "BUILD.txt", "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md"
  end

  test do
    assert_equal "0.1.1", shell_output("#{bin}/tidemux version").strip
  end
end
