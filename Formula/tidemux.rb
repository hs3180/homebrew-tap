# typed: strict
# frozen_string_literal: true

# Homebrew formula for the TideMux local API gateway.
class Tidemux < Formula
  desc "Local OpenAI and Anthropic compatible API gateway"
  homepage "https://github.com/hs3180/tidemux"
  url "https://github.com/hs3180/tidemux/releases/download/v0.3.2/tidemux_0.3.2_fab20253edee_darwin_arm64.tar.gz"
  version "0.3.2"
  sha256 "9d5d9263db6fa423f2a40111c118450a04daa9e5865fb1317f5b44274d0e19f7"
  license "Apache-2.0"
  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "tidemux"
    pkgshare.install "docs", "licenses", "examples", "sbom.spdx.json", "BUILD.txt", "LICENSE", "NOTICE",
                     "THIRD_PARTY_NOTICES.md"
  end

  test do
    assert_equal "0.3.2", shell_output("#{bin}/tidemux version").strip
  end
end
