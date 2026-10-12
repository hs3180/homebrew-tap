# typed: strict
# frozen_string_literal: true

# Homebrew formula for the TideMux local API gateway.
class Tidemux < Formula
  desc "Local OpenAI and Anthropic compatible API gateway"
  homepage "https://github.com/hs3180/tidemux"
  url "https://github.com/hs3180/tidemux/releases/download/v0.3.3/tidemux_0.3.3_1c7005dce208_darwin_arm64.tar.gz"
  sha256 "483bf26f7e33ad64e07656eed4f4ec8fa7b052765dec8fa17cb06d186adeef8e"
  license "Apache-2.0"
  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "tidemux"
    pkgshare.install "docs", "licenses", "sbom.spdx.json", "BUILD.txt", "LICENSE", "NOTICE",
                     "README.md", "PRIVACY.md", "SECURITY.md", "CHANGELOG.md", "SBOM.md", "THIRD_PARTY_NOTICES.md"
  end

  test do
    assert_equal "0.3.3", shell_output("#{bin}/tidemux version").strip
  end
end
