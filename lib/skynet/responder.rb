require_relative "errors/skynet_response_error"

module Skynet
  module Responder
    def self.parse(response)
      case response.status
      when 404, 401, 200
        Skynet::Response.new({
          status: response.status,
          contents: response.body,
          headers: response.headers
        })
      else
        raise SkynetResponseError "An unknown problem has occurred"
      end
    end
  end
end
