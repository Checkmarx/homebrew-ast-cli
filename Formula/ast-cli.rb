# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstCli < Formula
  desc "CLI for Checkmarx One"
  homepage "https://github.com/Checkmarx/ast-cli"
  version "2.0.41"
  license "Apache"

  on_macos do
    url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.41/ast-cli_2.0.41_darwin_x64.tar.gz"
    sha256 "4e1d12872cf07d0347d2ed0c0a60f0396bb28e974209e06973fdc0bba4c3d752"

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
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.41/ast-cli_2.0.41_linux_armv6.tar.gz"
      sha256 "20787b438f7edb3a721a24ea6a8744de510490769563b5bb2483123328aecd2e"

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
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.41/ast-cli_2.0.41_linux_arm64.tar.gz"
      sha256 "ac47578ded0b03c5c57217d3217b503312354918ea76d1b34b0759780f3198cc"

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
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.0.41/ast-cli_2.0.41_linux_x64.tar.gz"
      sha256 "0baca6a39aeb9c481fc3ca1abbc4e08deeacc3249ecbac16a929ed86fb2c1414"

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
