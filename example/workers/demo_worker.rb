require 'ob_serv'
require 'ob_serv/sidekiq'
require_relative '../config/sidekiq.rb'
require_relative '../events/demo.rb'
class DemoWorker
  include Sidekiq::Worker

  def perform(index)
    p index
  end
end
