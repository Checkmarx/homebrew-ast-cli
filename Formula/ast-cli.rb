# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstCli < Formula
  desc "CLI for AST"
  homepage "https://github.com/Checkmarx/ast-cli"
  version "2.0.0"
  license "Apache"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.0/ast-cli_2.0.0_darwin_x64.tar.gz"
      sha256 "4ea6d425015942b568deba2c34a7387fb05911b5cf4d1855d092462267d54a93"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.0/ast-cli_2.0.0_darwin_arm64.tar.gz"
      sha256 "79ceea0ac2a589b53cc40f0f9893878c1339048656085b888d30f35a41f4b135"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.0/ast-cli_2.0.0_linux_x64.tar.gz"
      sha256 "6504369bb24a825b655ddbc38f415e223d5397b729fbd43a1324bf4ed10e3d1f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.0/ast-cli_2.0.0_linux_arm64.tar.gz"
      sha256 "d4f211a8be7b3d02521bea811a90986ac81b2afd3f0e99c871cc648cbc16764d"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    system "#{bin}/cx version"
  end
end
