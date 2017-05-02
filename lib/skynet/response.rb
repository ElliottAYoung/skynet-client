require 'JSON'

module Skynet
  class Response
    attr_reader :raw_headers, :contents, :status

    def initialize(args = {})
      @status = args[:status]
      @raw_headers = args[:headers]
      @contents = parsed_contents(args[:contents], args[:error])
    end

    private

    def parsed_contents(contents, error)
      return [error] if @status >= 400

      begin
        JSON.parse(contents)
      rescue JSON::ParserError => e
        [contents]
      end
    end
  end
end
