# -*- encoding: utf-8 -*-
require File.expand_path("../lib/ffi-inliner/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "ffi-inliner"
  s.version     = Inliner::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Andrea Fazzi']
  s.email       = ['andrea.fazzi@alcacoop.it']
  s.homepage    = 'http://github.com/remogatto/ffi-inliner'
  s.summary     = "With ffi-inliner you can run C code within your ruby script."
  s.description = <<-TXT
SYNOPSIS:

  require 'ffi-inliner'

  module MyLib
    extend Inliner
    inline 'void say_hello(char* name) { printf("Hello, %s\n", name); }'
  end

  MyLib.say_hello('boys')

  class Foo
    include MyLib
  end

  Foo.new.say_hello('foos')

For other hints see the examples/ folder or visit the
wiki[http://wiki.github.com/remogatto/ffi-inliner/tutorial]. For a "real" world
example you may be interested to
ffi-life[http://github.com/remogatto/ffi-life].
  TXT

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "ffi-inliner"

  s.add_runtime_dependency "ffi", ">= 0.4.0"
  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
