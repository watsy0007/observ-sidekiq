require 'ob_serv'
require 'sidekiq'

module ObServ
  class SidekiqPublisher
    def self.publish(event, *args)
      Wrapper.delay.publish(event, *args)
    end

    class Wrapper
      def self.publish(event, *args)
        ObServ.publish event, *args
      end
    end

    def self.register
      method = ObServ::SidekiqPublisher.method(:publish)
      ObServ.config[:publish] = method
    end
  end
end

ObServ::SidekiqPublisher.register
