# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ruby_speech/version"

Gem::Specification.new do |s|
  s.name        = "ruby_speech"
  s.version     = RubySpeech::VERSION
  s.authors     = ["Ben Langfeld"]
  s.email       = ["ben@langfeld.me"]
  s.homepage    = "https://github.com/adhearsion/ruby_speech"
  s.summary     = %q{A Ruby library for TTS & ASR document preparation}
  s.description = %q{Prepare SSML and GRXML documents with ease}

  s.license = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  if RUBY_PLATFORM =~ /java/
    s.platform = "java"
    s.files << "lib/ruby_speech/ruby_speech.jar"
  else
    s.extensions = ['ext/ruby_speech/extconf.rb']
  end

  s.add_dependency %q<nokogiri>, ["~> 1.8", ">= 1.8.3"]
  s.add_dependency %q<activesupport>, [">= 3.0.7"]
end
