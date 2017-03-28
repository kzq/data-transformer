require 'spec_helper'

describe DataTransformer::JsonParser do
  let(:json_parser) { described_class.new}
  let(:data) { {"data"=>[{"category"=>"anti-social-behaviour", "persistent_id"=>"", "location_type"=>"Force", "location_subtype"=>"", "id"=>20599642, "location"=>{"latitude"=>"52.6269479", "longitude"=>"-1.1121716"}}, {"category"=>"burglary", "persistent_id"=>"aebd220e869a235ba92cde43f7e0df29001573b3df1b094bb952820b2b8f44b0", "location_type"=>"Force", "location_subtype"=>"", "id"=>20604632, "location"=>{"latitude"=>"52.6271606", "longitude"=>-1.1485111}}]} }
  
  describe '#parse' do
    it 'parses data' do
      expect(json_parser.parse('data.txt')).to eq(data)
    end
  end
end