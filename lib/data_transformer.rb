$LOAD_PATH.unshift(File.dirname(__FILE__))
require "data_transformer/configuration"

# Data transfer module
module DataTransformer
  class << self
    def config(params)
      @config || Configuration.new(params)
    end
  end
end

require "data_transformer/version"
require "data_transformer/extractor"
require "data_transformer/processor"
require "data_transformer/json_parser"