# typed: strict
# frozen_string_literal: true

# Homebrew formula for the TideMux local API gateway.
class Tidemux < Formula
  desc "Local OpenAI and Anthropic compatible API gateway"
  homepage "https://github.com/hs3180/tidemux"
  url "https://github.com/hs3180/tidemux/releases/download/v0.3.1/tidemux_0.3.1_4886a58acd1a_darwin_arm64.tar.gz"
  version "0.3.1"
  sha256 "3542be1640dbbec8ecb39bbb373545b8f0ae7561fc5517228b9acf7db5f461e1"
  license "Apache-2.0"
  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "tidemux"
    pkgshare.install "docs", "licenses", "examples", "sbom.spdx.json", "BUILD.txt", "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md"
  end

  test do
    assert_equal "0.3.1", shell_output("#{bin}/tidemux version").strip
  end
end
