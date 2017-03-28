require 'json'
module DataTransformer
  class JsonParser
    def parse(source_path)
      JSON.parse(source_path)  
    end
  end
end