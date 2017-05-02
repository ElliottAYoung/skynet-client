module Skynet
  module Identifier
    def self.identify(path, args)
      return [path, args] unless args.has_key?(:id) || args.has_key?('id')

      ["#{path}/#{args[:id] || args['id']}", args]
    end
  end
end
