# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'social_share_count/version'

Gem::Specification.new do |spec|
  spec.name          = "social_share_count"
  spec.version       = SocialShareCount::VERSION
  spec.authors       = ["khacluan"]
  spec.email         = ["dangluan20@gmail.com"]
  spec.summary       = %q{Social Share Count for websites.}
  spec.description   = %q{This is gem use for get share count from social websites with specific url.}
  spec.homepage      = "http://khacluan.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "json"
  spec.add_dependency "nokogiri"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
