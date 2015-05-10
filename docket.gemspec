$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'docket/version'

Gem::Specification.new do |s|
  s.name        = 'docket'
  s.version     = Docket::VERSION
  s.authors     = ['Alex Leaver']
  s.email       = ['email@alexleaver.co.uk']
  s.homepage    = 'https://github.com/amleaver/docket'
  s.summary     = 'Rails helper for rendering Objects and Collections as HTML tables'
  s.description = s.summary
  s.license     = 'MIT'

  s.files = Dir['lib/**/*', 'MIT-LICENSE', 'README.rdoc']

  s.add_runtime_dependency 'rails', '~> 4.0', '>= 4.0.9'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop'
end
