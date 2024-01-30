
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.1.1"
  

  if Hardware::CPU.intel?
    sha256 ""
    url "https://releases.mondoo.com/cnquery/10.1.1/cnquery_10.1.1_darwin_amd64.tar.gz"
  else
    sha256 ""
    url "https://releases.mondoo.com/cnquery/10.1.1/cnquery_10.1.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

