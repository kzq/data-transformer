require 'spec_helper'

describe DataTransformer::Extractor do
  let(:processor) { double('processor', set_data: 'data') }
  let(:parser) { double('loader', parse: processor) }
  let(:params) { { source_path: 'data.txt', parser: parser, processor: processor} }
  let(:extractor) { described_class.new}
  
  describe '#load' do
    it 'sends back data processor' do
      expect(extractor.load(params)).to eq(processor)
    end
  end
end
