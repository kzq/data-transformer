module DataTransformer
  class Extractor
    def load(params)
      parser, source_path, processor = params[:parser], params[:source_path], params[:processor]  
      data = parser.parse(source_path)
      processor.set_data(data)
      processor
    end  
  end
end