require 'rails_helper'

RSpec.describe Request, type: :model do
  before do
    user = User.create(first_name: 'test', last_name: 'user', email: "testworker@test.com", password: "password", password_confirmation: "password", worker_id: "xyz2020")
    @request = Request.create(status: 'pending', vacation_start_date: Date.tomorrow, vacation_end_date: Date.tomorrow + 5.days, author: "#{user.first_name}  #{user.last_name}", user_id: user.id)
  end
  describe "creating a request" do
    it 'it can be created' do
      expect(@request).to be_valid 
    end
  end
end
