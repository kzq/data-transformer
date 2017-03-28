require 'spec_helper'

describe DataTransformer::Configuration do
  let(:params) { { source_path: 'data.json', data_format: :json } }
  subject { described_class.new(params) }
  
  its(:source_path) { should eq('data.json') }
  
  its(:data_format) { should eq(:json) }
   
  its(:parser) { should be_a(DataTransformer::JsonParser) }
    
end
