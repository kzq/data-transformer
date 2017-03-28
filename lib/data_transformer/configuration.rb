module DataTransformer
  class Configuration
    attr_accessor :source_path, :data_format 
    
    def initialize(params) 
      @source_path, @data_format = params[:source_path], params[:data_format]
    end
  end
end