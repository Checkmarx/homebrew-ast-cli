# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstCli < Formula
  desc "CLI for Checkmarx One"
  homepage "https://github.com/Checkmarx/ast-cli"
  version "2.3.28"
  license "Apache"

  on_macos do
    url "https://github.com/Checkmarx/ast-cli/releases/download/2.3.28/ast-cli_2.3.28_darwin_x64.tar.gz"
    sha256 "680cd494d5ef9a468f771628de2bd6781608d34a52ece0b154f32f850fe52841"

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
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.3.28/ast-cli_2.3.28_linux_armv6.tar.gz"
      sha256 "f7869ae483bb326b16b3a847dcb468a37076a7f6f712bfa85fda63a794c4900b"

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
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.3.28/ast-cli_2.3.28_linux_arm64.tar.gz"
      sha256 "bd7754f0dbf34b3f99e499adb9a07c6385779be507e2f79550ed5a9fde95050f"

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
      url "https://github.com/Checkmarx/ast-cli/releases/download/2.3.28/ast-cli_2.3.28_linux_x64.tar.gz"
      sha256 "d549c0aae3e900ca6b1f64e63df6c1d00d2bfa6e7bb582ffa32766c57379c7a4"

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
