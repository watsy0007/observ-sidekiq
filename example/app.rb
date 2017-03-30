require 'sidekiq'
require 'ob_serv'
require 'ob_serv/sidekiq'
require 'byebug'
require './events/demo.rb'
require './config/sidekiq.rb'

0.upto(10) do |index|
  publish :event_demo, index
end
