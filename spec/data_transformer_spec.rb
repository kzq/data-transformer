require 'spec_helper'

describe DataTransformer do
  let(:params) { { source_path: 'data.json', data_format: :json } }
  
  describe '#config' do
    it 'initializes Configuration' do
      expect(DataTransformer.config(params)).to be_a(DataTransformer::Configuration)  
    end
  end

end 
