require 'rails_helper'

describe 'navigate to home' do
  describe 'homepage' do
    it 'can be reached' do
      visit root_path
      expect(page.status_code).to eq(200) 
    end
  end
end