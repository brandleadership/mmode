# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mmode/version"

Gem::Specification.new do |s|
  s.name        = "mmode"
  s.version     = Mmode::VERSION
  s.authors     = ["Felipe Kaufmann"]
  s.email       = ["felipekaufmann@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{a gem to handle maintenance mode on scrcpt2}
  s.description = %q{this gem allows to enable/disable maintenance mode for each customer on scrcpt2}

  s.rubyforge_project = "mmode"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "thor"
end
