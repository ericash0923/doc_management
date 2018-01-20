require 'rails_helper'

RSpec.describe Document, type: :model do
  describe "Creation" do
    before do
      @topic = Topic.create(title: "First Topic")
      @document = Document.create(name: "New Doc", topic_id: @topic.id)
    end
    
    it "can be created" do
      expect(@document).to be_valid
    end
    
    it 'cannot be created without a title' do
      @document.name = nil
      expect(@document).to_not be_valid
    end
  end
  
  describe "Associations" do
    it 'belong to topic' do
      should belong_to(:topic)
    end
    
    it 'Need topic to exist' do
      should validate_presence_of(:topic)
    end
  end
end
