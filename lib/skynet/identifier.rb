module Skynet
  module Identifier
    def self.identify(method, path, args)
      if method == "edit"
        method, path = Skynet::Identifier.handle_edit_path(path, args)
      elsif method == "new"
        method, path = Skynet::Identifier.handle_new_path(path)
      else
        path, args = Skynet::Identifier.handle_show_path(path, args)
      end

      [method, path, args]
    end

    private

    def self.handle_show_path(path, args)
      return [path, args] unless args.has_key?(:id) || args.has_key?('id')

      ["#{path}/#{args[:id] || args['id']}", args]
    end

    def self.handle_edit_path(path, args)
      method = "get"
      edit_path = "#{path}/#{args[:id] || args['id']}/edit"

      [method, edit_path]
    end

    def self.handle_new_path(path)
      method = "get"
      new_path = "#{path}/new"

      [method, new_path]
    end
  end
end
