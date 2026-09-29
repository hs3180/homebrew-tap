class Tidemux < Formula
  desc "Local OpenAI and Anthropic compatible API gateway"
  homepage "https://github.com/hs3180/tidemux"
  url "https://github.com/hs3180/tidemux/releases/download/v0.2.2/tidemux_0.2.2_9223e0a802d7_darwin_arm64.tar.gz"
  version "0.2.2"
  sha256 "96add8b877a8800bb46e39daf8249b98781c04d35622e6548a3c782285e9a750"
  license "Apache-2.0"
  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "tidemux"
    pkgshare.install "docs", "licenses", "sbom.spdx.json", "BUILD.txt", "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md"
  end

  test do
    assert_equal "0.2.2", shell_output("#{bin}/tidemux version").strip
  end
end
