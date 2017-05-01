require "skynet/accessor"
require "skynet/splitter"
require "skynet/responder"
require "skynet/response"

module Skynet
  class Client
    attr_reader :access_code, :skynet_url

    def initialize(args = {})
      @access_code = args[:access_code]
      @skynet_url = args[:skynet_url]
    end

    def method_missing(*args)
      response = Skynet::Accessor.query(self, args[0], args[1])
      Skynet::Responder.parse(response)
    end
  end
end
