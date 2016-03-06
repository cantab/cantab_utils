require 'bundler'
Bundler.setup(:default, :development)

require 'cantab_utils'
require 'rspec'

RSpec.configure do |config|
  config.order = 'random'
end
