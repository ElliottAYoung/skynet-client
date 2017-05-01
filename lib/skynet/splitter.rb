require_relative "errors/skynet_method_error"

module Skynet
  module Splitter
    def self.clean(path_info)
      path_info_string = path_info.to_s

      raise SkynetMethodError unless path_info_string.include?("_")

      path_info_string.split("_")
    end
  end
end
