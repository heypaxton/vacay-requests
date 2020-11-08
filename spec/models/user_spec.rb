require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creating a user" do
    before do
      @user = User.create(first_name: 'test', last_name: 'user', email: "testworker@test.com", password: "password", password_confirmation: "password")
    end

    it "can be created" do
      expect(@user).to be_valid 
    end

    it "must have a worker id" do
      expect(@user.worker_id).to_not be_nil 
    end
  end

  describe "creating an manager user" do
    before do
      @user = ManagerUser.create(first_name: 'test', last_name: 'user', email: "testworker@test.com", password: "password", password_confirmation: "password")
    end

    it "can be created" do
      expect(@user).to be_valid 
    end
  end
end
