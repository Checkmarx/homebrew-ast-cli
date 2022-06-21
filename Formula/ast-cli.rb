# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstCli < Formula
  desc "CLI for AST"
  homepage "https://github.com/Checkmarx/ast-cli"
  version "2.0.20"
  license "Apache"

  on_macos do
    url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.20/ast-cli_2.0.20_darwin_x64.tar.gz"
    sha256 "b3c1c9e1d28bad65804c7e941f5f1e040c3728cdc0434fbdf99cda4131cc9e85"

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
    if Hardware::CPU.intel?
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.20/ast-cli_2.0.20_linux_x64.tar.gz"
      sha256 "f73285990fb2165c7e8eca91a9b0316ad7246e36e17fae78d4576ab0f514e38e"

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
