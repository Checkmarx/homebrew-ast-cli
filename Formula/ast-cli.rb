# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstCli < Formula
  desc "CLI for AST"
  homepage "https://github.com/Checkmarx/ast-cli"
  version "2.0.10"
  license "Apache"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.10/ast-cli_2.0.10_darwin_x64.tar.gz"
      sha256 "4e7a7b41f1a77e9b5a13cf51206fe6f2931f861127659638c577a00782e9623e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.10/ast-cli_2.0.10_darwin_arm64.tar.gz"
      sha256 "a7dd8af1e139b7543327efa02656070d25a1c8b3b886525d7382bcf0df20c8ab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.10/ast-cli_2.0.10_linux_x64.tar.gz"
      sha256 "1734f371298eea53716a3f7085f8730c351b1018d5570a797e67f12f3e98ccf5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.10/ast-cli_2.0.10_linux_arm64.tar.gz"
      sha256 "e09cfe40473293eb393e84bec80fd4533356e8becd70b144c90c28c0ebd9273a"
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
