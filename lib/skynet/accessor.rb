require "faraday"

module Skynet
  module Accessor
    def self.query(client, path_info, args = {})
      @client = client
      @conn = set_up_faraday

      client_args = args.merge({ access_code: @client.access_code })
      access_skynet(path_info, client_args)
    end

    class << self
      private

      def set_up_faraday
        Faraday.new(:url => "#{@client.skynet_url}/api") do |faraday|
          faraday.request  :url_encoded
          faraday.response :logger
          faraday.adapter  Faraday.default_adapter
        end
      end

      def access_skynet(path_info, args)
        method, path = Skynet::Splitter.clean(path_info)
        method, path, args = Skynet::Identifier.identify(method, path, args)
        binding.pry

        @conn.send(method, *[path, args])
      end
    end
  end
end
