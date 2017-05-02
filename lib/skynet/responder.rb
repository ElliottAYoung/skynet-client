module Skynet
  module Responder
    def self.parse(response)
      case response.status
      when 404, 401, 200
        Skynet::Response.new({
          status: response.status,
          contents: response.body,
          headers: response.headers,
          error: response.reason_phrase
        })
      else
        raise SkynetResponseError
      end
    end
  end
end
