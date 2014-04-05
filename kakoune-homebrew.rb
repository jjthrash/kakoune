require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Kakoune < Formula
  homepage ""
  url "https://github.com/mawww/kakoune/archive/cd8fa49ad11abbadb3fd7cccbf47db9d4ea15a2a.tar.gz"
  sha1 "f9f1fed59487d1897fa79f0de1eee927e1c704ba"
  version "0.1"

  def install
    Dir.chdir('src') do
      system "make", "install", "PREFIX=#{prefix}"
    end
  end
end
