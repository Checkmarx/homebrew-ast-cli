# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstCli < Formula
  desc "CLI for AST"
  homepage "https://github.com/Checkmarx/ast-cli"
  version "2.0.11"
  license "Apache"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.11/ast-cli_2.0.11_darwin_x64.tar.gz"
      sha256 "4deaaf708cdd0d4c3a2cc0529ec3d6a21be5dadfeb79f7977142abee877966b2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.11/ast-cli_2.0.11_darwin_arm64.tar.gz"
      sha256 "3a7cd29c1feddcc205e7f720a7b8a5b33f2d0110be150d79b657ada61fea7e90"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.11/ast-cli_2.0.11_linux_x64.tar.gz"
      sha256 "5f3232433382655fdc7cf85d432aecd2e3df7e5ee9ede27815ca4a58ac565c14"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.11/ast-cli_2.0.11_linux_arm64.tar.gz"
      sha256 "07feea485228c71390b3002746ec1789c4b251afd9d4d80d36c3d5f39ceaf3d2"
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
