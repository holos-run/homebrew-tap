# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Holos < Formula
  desc "Holos CLI"
  homepage "https://holos.run"
  version "0.99.2"

  depends_on "helm" => :optional
  depends_on "kubectl" => :optional

  on_macos do
    on_intel do
      url "https://github.com/holos-run/holos/releases/download/v0.99.2/holos_Darwin_x86_64.tar.gz"
      sha256 "bdececaf38c37b02a81d8971323baf8688f0216efb0b3f43ba08907439cbc15b"

      def install
        bin.install "holos"
        bash_output = Utils.safe_popen_read(bin/"holos", "completion", "bash")
        (bash_completion/"holos").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"holos", "completion", "zsh")
        (zsh_completion/"_holos").write zsh_output
        fish_output = Utils.safe_popen_read(bin/"holos", "completion", "fish")
        (fish_completion/"holos.fish").write fish_output
      end
    end
    on_arm do
      url "https://github.com/holos-run/holos/releases/download/v0.99.2/holos_Darwin_arm64.tar.gz"
      sha256 "09c6d070c97fae48ca19067d8d03799839ea072f41e638143773ea2f3a03358e"

      def install
        bin.install "holos"
        bash_output = Utils.safe_popen_read(bin/"holos", "completion", "bash")
        (bash_completion/"holos").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"holos", "completion", "zsh")
        (zsh_completion/"_holos").write zsh_output
        fish_output = Utils.safe_popen_read(bin/"holos", "completion", "fish")
        (fish_completion/"holos.fish").write fish_output
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/holos-run/holos/releases/download/v0.99.2/holos_Linux_x86_64.tar.gz"
        sha256 "4196f9cb92eab505011d06f94cd5b8dade26bb1c6ef9a1078a8f5cfcd4815e6a"

        def install
          bin.install "holos"
          bash_output = Utils.safe_popen_read(bin/"holos", "completion", "bash")
          (bash_completion/"holos").write bash_output
          zsh_output = Utils.safe_popen_read(bin/"holos", "completion", "zsh")
          (zsh_completion/"_holos").write zsh_output
          fish_output = Utils.safe_popen_read(bin/"holos", "completion", "fish")
          (fish_completion/"holos.fish").write fish_output
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/holos-run/holos/releases/download/v0.99.2/holos_Linux_arm64.tar.gz"
        sha256 "062205013e487071331d5b8545855ea259af9850f6b6725516d84d362408664b"

        def install
          bin.install "holos"
          bash_output = Utils.safe_popen_read(bin/"holos", "completion", "bash")
          (bash_completion/"holos").write bash_output
          zsh_output = Utils.safe_popen_read(bin/"holos", "completion", "zsh")
          (zsh_completion/"_holos").write zsh_output
          fish_output = Utils.safe_popen_read(bin/"holos", "completion", "fish")
          (fish_completion/"holos.fish").write fish_output
        end
      end
    end
  end

  test do
    system "#{bin}/holos version"
  end
end
