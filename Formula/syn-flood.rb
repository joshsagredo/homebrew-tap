# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SynFlood < Formula
  desc "syn-flood starts a syn flood attack with raw sockets. created for learning low level network ops"
  homepage "https://github.com/joshsagredo/syn-flood"
  version "2.0.1"
  license "apache-2.0"

  on_macos do
    url "https://github.com/joshsagredo/syn-flood/releases/download/v2.0.1/syn-flood_2.0.1_darwin_x86_64.tar.gz"
    sha256 "aecf0be0dede2e94ab47fced4b2deffcba30ab5d0aeeee5f15b4264ee4fab10c"

    def install
      bin.install "syn-flood"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the SynFlood
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/joshsagredo/syn-flood/releases/download/v2.0.1/syn-flood_2.0.1_linux_x86_64.tar.gz"
      sha256 "4c7112da735c308bc957c8b60e11cb4b257e090a53a540f8be69f07d0a72b030"

      def install
        bin.install "syn-flood"
      end
    end
  end
end
