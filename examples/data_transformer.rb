load 'lib/data_transformer.rb'

config = DataTransformer.config(source_path: 'data.txt', data_format: :json)


puts"=======Configuration=========="

puts "config=#{config.inspect}"

puts"=======Data: Loaded==========="

extractor = DataTransformer::Extractor.new

processor = extractor.load(source_path: config.source_path, parser: config.parser, processor: DataTransformer::Processor.new)

puts "data=#{processor.data}"

