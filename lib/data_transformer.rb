require "data_transformer/version"
require "data_transformer/configuration"

# Data transfer module
module DataTransformer
  class << self
    def config(params)
      @config || Configuration.new(params)
    end
  end
end
