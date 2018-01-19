# spec/post_spec.rb

require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    before do
      @topic = Topic.create!(title: "First Topic")
      @sub_topic = Topic.create!(title: "Sub Topic", parent: @topic)
      visit root_path
    end
    
    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end
    
    it 'has parent node' do
      expect(page).to have_content(/First Topic/)
    end
    
    it 'does not have any sub_topic' do
      expect(page).to_not have_content(/Sub Topic/)
    end
  end
end

describe 'creation' do
  before do
    @topic = Topic.create!(title: "First Topic")
    @sub_topic = Topic.create!(title: "Sub Topic", parent: @topic)
  end
    
  describe 'new' do
    it 'has a new form that can be reached' do
      visit new_topic_path
      expect(page.status_code).to eq(200)
    end
  
    it 'can be created from new form page' do
      visit new_topic_path
      fill_in 'topic[title]', with: 'Some topic'
      expect { click_on "Create Topic"}.to change(Topic, :count).by(1)
    end
    
    it 'id pass into new action' do
      visit topic_path(@topic)
      expect(find_link('New topic')[:href]).to eq("/topics/new?parent_id=#{@topic.id}")
    end
  end
end