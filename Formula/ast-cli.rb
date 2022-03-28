# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstCli < Formula
  desc "CLI for AST"
  homepage "https://github.com/Checkmarx/ast-cli"
  version "2.0.15"
  license "Apache"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.15/ast-cli_2.0.15_darwin_x64.tar.gz"
      sha256 "4d333be532325a966d7dc1eae340cf3f71208d3f1a65dcda44626c33727d2b1f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.15/ast-cli_2.0.15_darwin_arm64.tar.gz"
      sha256 "0ae4a259db76c9437918264cdf994657ceaf56728fc3832a2960056014274085"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.15/ast-cli_2.0.15_linux_x64.tar.gz"
      sha256 "c7212fddd4385989e140dda882f8ab7e2320999be0c46a16f5a43533014c1646"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.15/ast-cli_2.0.15_linux_arm64.tar.gz"
      sha256 "c302e20692e45c9d3b3cd2e957e53af8179bdb8a4215a9af0b541ccd70dd8e46"
    end
  end

  def install
    bin.install "cx"
    # Install bash completion
    output = Utils.popen_read("#{bin}/cx utils completion -s bash")
    (bash_completion/"cx").write output
    # Install zsh completion
    output = Utils.popen_read("#{bin}/cx utils completion -s zsh")
    (zsh_completion/"_cx").write output
    # Install fish completion
    output = Utils.popen_read("#{bin}/cx utils completion -s fish")
    (fish_completion/"cx.fish").write output
  end

  test do
    system "#{bin}/cx version"
  end
end
