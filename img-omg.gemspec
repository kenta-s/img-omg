# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'img/omg/version'

Gem::Specification.new do |spec|
  spec.name          = "img-omg"
  spec.version       = Img::Omg::VERSION
  spec.authors       = ["kenta-s"]
  spec.email         = ["knt01222@gmail.com"]

  spec.summary       = %q{Take images from Websites.}
  spec.description   = %q{curl command does not work for the website and it is difficult to remember the options of wget command?
                          then, img-omg is the option. It requires nothing but a URL.}
  spec.homepage      = "https://github.com/kenta-s/img-omg"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "nokogiri", ">= 1.3.3"
end
