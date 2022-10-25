# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruby_speech/version"

Gem::Specification.new do |s|
  s.name        = "invoca-ruby_speech"
  s.version     = RubySpeech::VERSION
  s.authors     = ["Ben Langfeld", "Invoca Development"]
  s.email       = ["ben@langfeld.me", "development@invoca.com"]
  s.homepage    = "https://github.com/Invoca/ruby_speech"
  s.summary     = %q{A Ruby library for TTS & ASR document preparation}
  s.description = %q{Prepare SSML and GRXML documents with ease}

  s.license = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.metadata['source_code_uri'] = "https://github.com/Invoca/ruby_speech"
  s.metadata['allowed_push_host'] = "https://gem.fury.io/invoca"

  if RUBY_PLATFORM =~ /java/
    s.platform = "java"
    s.files << "lib/ruby_speech/ruby_speech.jar"
  else
    s.extensions = ['ext/ruby_speech/extconf.rb']
  end

  s.add_dependency %q<nokogiri>, ["~> 1.8", ">= 1.8.3"]
  s.add_dependency %q<activesupport>, [">= 3.0.7"]
end
