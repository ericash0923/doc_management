require 'rails_helper'

RSpec.describe Admin, type: :model do
  describe "creation" do

  	it "can be created" do
  	  @admin = Admin.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")
  		expect(@admin).to be_valid
  	end
  end
end
