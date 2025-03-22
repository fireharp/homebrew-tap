# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CursorRules < Formula
  desc "CLI tool to help initialize and manage Cursor Editor rules for your projects"
  homepage "https://github.com/fireharp/cursor-rules"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fireharp/cursor-rules/releases/download/v0.1.5/cursor-rules_Darwin_x86_64.tar.gz"
      sha256 "fb531b06d0c3ff1443d30136f2f59f634e562dc5ed9e0a8fbd86e6d58bb93d94"

      def install
        bin.install "cursor-rules"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fireharp/cursor-rules/releases/download/v0.1.5/cursor-rules_Darwin_arm64.tar.gz"
      sha256 "3ffb4d1164e64a422e41d272939cd9ade161f51477208d6ed27e0164428e27bf"

      def install
        bin.install "cursor-rules"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fireharp/cursor-rules/releases/download/v0.1.5/cursor-rules_Linux_x86_64.tar.gz"
        sha256 "e9fed928bb6f46e21e1c5861dcd0c631ae3db988239dcc4feb03465bae5d96df"

        def install
          bin.install "cursor-rules"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fireharp/cursor-rules/releases/download/v0.1.5/cursor-rules_Linux_arm64.tar.gz"
        sha256 "8a0b8e1bdffdfdcf38e51ee1b859d7c0718f87d21a6dbb3aead295818c36f669"

        def install
          bin.install "cursor-rules"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Run cursor-rules in your project directory to set up Cursor Editor rules
    EOS
  end

  test do
    system "#{bin}/cursor-rules --version"
  end
end
