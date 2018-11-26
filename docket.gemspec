$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'docket/version'

Gem::Specification.new do |s|
  s.name        = 'docket'
  s.version     = Docket::VERSION
  s.authors     = ['Alex Leaver']
  s.email       = ['amleaver@gmail.com']
  s.homepage    = 'https://github.com/amleaver/docket'
  s.summary     = 'Rails helper for rendering Rails Model Objects as HTML tables'
  s.description = s.summary
  s.license     = 'MIT'

  s.files = Dir['lib/**/*', 'MIT-LICENSE', 'README.rdoc']

  s.add_runtime_dependency 'rails', '~> 5.2', '>= 5.0'
end
