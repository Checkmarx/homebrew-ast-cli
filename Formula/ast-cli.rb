# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstCli < Formula
  desc "CLI for AST"
  homepage "https://github.com/Checkmarx/ast-cli"
  version "2.0.2"
  license "Apache"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.2/ast-cli_2.0.2_darwin_x64.tar.gz"
      sha256 "977e9f468572495879a8ce7bda5c0412401fb02b13bb77c273f3a741d924accf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.2/ast-cli_2.0.2_darwin_arm64.tar.gz"
      sha256 "80828217d714ccf1bbcdfb1a6faa751c8d2091b2bdb07ddfe7e1f1378adf5305"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.2/ast-cli_2.0.2_linux_x64.tar.gz"
      sha256 "98bd814e31216988d0e067e3d05ff3eb3ff3188452c628eccd0976cab1583ad3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.2/ast-cli_2.0.2_linux_arm64.tar.gz"
      sha256 "1f71877c5da83de786c1d8d14269f95cd9d97b2b91e0c2490272f998ce978735"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    system "#{bin}/cx version"
  end
end
