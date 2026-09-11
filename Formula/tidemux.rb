class Tidemux < Formula
  desc "Local OpenAI and Anthropic compatible API gateway"
  homepage "https://github.com/hs3180/tidemux"
  url "https://github.com/hs3180/tidemux/releases/download/v0.1.0/tidemux_0.1.0_c072fec63763_darwin_arm64.tar.gz"
  version "0.1.0"
  sha256 "e5f0709de5979de8c1bef4d8ff0d7d3adf0db4a57e3d30aff7516d4c4bc84fdf"
  license "Apache-2.0"
  depends_on macos: :sequoia
  depends_on arch: :arm64

  def install
    bin.install "tidemux"
    pkgshare.install "tidemux.example.json", "examples", "docs", "licenses", "scripts", "sbom.spdx.json", "BUILD.txt", "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md"
  end

  test do
    assert_equal "0.1.0", shell_output("#{bin}/tidemux version").strip
  end
end
