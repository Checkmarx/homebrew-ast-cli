# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstCli < Formula
  desc "CLI for Checkmarx One"
  homepage "https://github.com/Checkmarx/ast-cli"
  version "2.3.21"
  license "Apache"

  on_macos do
    url "https://github.com/Checkmarx/ast-cli/releases/download/2.3.21/ast-cli_2.3.21_darwin_x64.tar.gz"
    sha256 "847c6366ac5049df11d27e9a3800e1b70ae64fe9af197c265893bf20167b30fd"

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
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.3.21/ast-cli_2.3.21_linux_armv6.tar.gz"
      sha256 "cd0c998ff33c9f5c4b20837f40b2c08fb5800f983b281c3cef158ba898d6528c"

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
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.3.21/ast-cli_2.3.21_linux_arm64.tar.gz"
      sha256 "6b4a5cc7df81360f8fc95360ab1b9ec1e42c7349469a29d143ad94e4d986de30"

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
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.3.21/ast-cli_2.3.21_linux_x64.tar.gz"
      sha256 "09a4821b435513f377eb642b697f06ff1704e194be87d63bf3b73e956214f301"

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
