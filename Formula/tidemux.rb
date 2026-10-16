# typed: strict
# frozen_string_literal: true

# Homebrew formula for the TideMux local API gateway.
class Tidemux < Formula
  desc "Local OpenAI and Anthropic compatible API gateway"
  homepage "https://github.com/hs3180/tidemux"
  url "https://github.com/hs3180/tidemux/releases/download/v0.3.5/tidemux_0.3.5_67f3c7eb0e3a_darwin_arm64.tar.gz"
  sha256 "be26623d6eda1df905bc3bfbdfbf58117b02cc9ba18f37d893a10e84c4460e04"
  license "Apache-2.0"
  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "tidemux"
    pkgshare.install "docs", "licenses", "sbom.spdx.json", "BUILD.txt", "LICENSE", "NOTICE",
                     "README.md", "PRIVACY.md", "SECURITY.md", "CHANGELOG.md", "SBOM.md", "THIRD_PARTY_NOTICES.md"
  end

  test do
    assert_equal "0.3.5", shell_output("#{bin}/tidemux version").strip
  end
end
