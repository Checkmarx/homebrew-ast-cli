# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstCli < Formula
  desc "CLI for Checkmarx One"
  homepage "https://github.com/Checkmarx/ast-cli"
  version "2.3.14"
  license "Apache"

  on_macos do
    url "https://github.com/Checkmarx/ast-cli/releases/download/2.3.14/ast-cli_2.3.14_darwin_x64.tar.gz"
    sha256 "1c7bf55e4f34c973e982d4e44997dfc8dc9e1a4aab19219d3cd8eb365014fd78"

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
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.3.14/ast-cli_2.3.14_linux_armv6.tar.gz"
      sha256 "8473f88167801b0b4251460f91e2c16cf9aa1178f8e7bddc91c05428cbc6ba0a"

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
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.3.14/ast-cli_2.3.14_linux_arm64.tar.gz"
      sha256 "0846d3bb72699e7f5b8da1a7cd19458010c94ffcc4bf88a4ef67dedd6e0f92e3"

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
    end
    if Hardware::CPU.intel?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.3.14/ast-cli_2.3.14_linux_x64.tar.gz"
      sha256 "36690b2c228d2ea45f33d6809797f15e6f1bd760a90f12cbbf4b834b1626778d"

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
    end
  end

  test do
    system "#{bin}/cx version"
  end
end
