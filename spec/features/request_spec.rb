require 'rails_helper'

describe 'view a list of requests' do
  describe 'index' do
    it 'can be reached' do
      visit requests_path
      expect(page.status_code).to eq(200) 
    end
  end
end
