module Skynet
  class Response
    attr_reader :raw_headers, :contents, :errors, :status

    def initialize(args = {})
      @contents = args[:contents]
      @raw_headers = args[:headers]
      @status = args[:status]
      @errors = find_errors
    end

    def is_error?
      @status >= 400 || (@contents.is_a?(Hash) && @contents.errors?)
    end

    private

    def find_errors
      []
    end
  end
end
