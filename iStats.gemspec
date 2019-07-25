# coding: utf-8
# require 'rake'

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iStats/version'

Gem::Specification.new do |s|
  s.name          = "iStats"
  s.version       = IStats::VERSION
  s.authors       = ["ChrisTaylor"]
  s.email         = ["a@a.com"]
  s.summary       = "Stats for your mac"
  s.license       = "MIT"

  # s.files         = `git ls-files`.split($/)
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # s.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
  #   `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # end
  #s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  # s.require_paths = ["lib", "ext"]
  # s.platform = Gem::Platform::RUBY
  # s.extensions = FileList["ext/extconf.rb"]
  # s.required_ruby_version = ">= 1.9.3"
  # s.add_development_dependency "rake-compiler", "~> 1.8"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  s.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib", "ext"]


  s.add_dependency "sparkr", "~> 0.4"
  s.add_dependency "parseconfig", "~> 1.0"

  s.add_development_dependency "bundler", "~> 1.16"
  s.add_development_dependency "rake", "12.3.2"
end
