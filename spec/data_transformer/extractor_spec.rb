require 'spec_helper'

describe DataTransformer::Extractor do
  let(:processor) { double('processor', data: 'data') }
  let(:parser) { double('loader', parse: processor) }
  let(:params) { { source_path: 'data.txt', parser: parser, processor: processor} }
  let(:extractor) { described_class.new}
  
  describe '#load' do
    it 'laods data from the given data source' do
      expect(extractor.load(params)).to eq('data')
    end
  end
end
