require 'spec_helper'

describe DataTransformer::Processor do
  let(:data) { {:data=>[{:category=>"anti-social-behaviour", :persistent_id=>"123"}]} }
  subject(:processor) { described_class.new }
  
  describe '#data' do
    it 'sets data for processing' do
      expect(processor.data(data)).to eq(data)
    end
  end 
end