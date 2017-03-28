require 'json'
module DataTransformer
  class JsonParser
    def parse(source_path)
      file = laod_file(source_path)
      JSON.parse(file)  
    end
    
    def laod_file(path)
      File.read(path)
    end
    
  end
end