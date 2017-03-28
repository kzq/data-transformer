require 'spec_helper'

describe DataTransformer::Configuration do
  let(:params) { { source_path: 'data.json', data_format: :json } }
  let(:config) { described_class.new(params) }
  
  specify { expect(config.source_path).to eq('data.json') }
  
  specify { expect(config.data_format).to eq(:json) }
  
  specify { expect(config.parser).to be_a(DataTransformer::JsonParser) }
end
