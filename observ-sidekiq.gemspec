# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ob_serv/sidekiq/version'

Gem::Specification.new do |spec|
  spec.name          = "observ-sidekiq"
  spec.version       = ObServ::Sidekiq::VERSION
  spec.authors       = ["watsy0007"]
  spec.email         = ["watsy0007@gmail.com"]

  spec.summary       = %q{observ async publishing using sidekiq.}
  spec.description   = %q{observ async publishing using sidekiq.}
  spec.homepage      = "https://github.com/watsy0007/observ-sidekiq"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'observ'
  spec.add_dependency 'sidekiq'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
