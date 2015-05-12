require 'rails/all'
require 'rspec/rails'
require 'docket'
require 'coveralls'

Coveralls.wear!

# allows test-suite to require rails without needing to define a DB connection
class ActiveRecord::Base
  def self.connection
    nil
  end
end
