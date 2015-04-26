$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'docket/version'

Gem::Specification.new do |s|
  s.name        = 'docket'
  s.version     = Docket::VERSION
  s.authors     = ['Alex Leaver']
  s.email       = ['email@alexleaver.co.uk']
  s.homepage    = 'https://github.com/amleaver/docket'
  s.summary     = 'Rails helper for rendering Objects and Collections as HTML tables'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '>= 4.0.9'
end
