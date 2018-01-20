require 'rails_helper'

RSpec.describe Topic, type: :model do
  describe "Creation" do
    before do
      @topic = Topic.create(title: "New Topic")
    end
    
    it "can be created" do
      expect(@topic).to be_valid
    end
    
    it 'cannot be created without a title' do
      @topic.title = nil
      expect(@topic).to_not be_valid
    end
  end
  
  describe "Associations" do
    it { should have_many(:documents) }
    it { should have_many(:documents).dependent(:destroy) }
  end
end