require 'spec_helper'

describe Location do
  describe 'to_s' do
    it 'returns string' do
      loc = Location.new(latitude: 3.14, longitude: 218.935)
      expect(loc.to_s).to eq '(3.140, 218.935)'
    end
  end
end
