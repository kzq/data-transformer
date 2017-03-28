module DataTransformer
  class Extractor
    def load(params)
      parser, source_path = params[:parser], params[:source_path] 
      parser.parse(source_path)
    end  
  end
end