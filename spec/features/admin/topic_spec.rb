require 'rails_helper'

describe 'navigate' do
  before do
    @topic = Topic.create!(title: "First Topic")
    @sub_topic = Topic.create!(title: "Sub Topic", parent: @topic)
  end
  
    describe 'index' do
      before do
        visit root_path
      end
      
      xit 'can be reached successfully' do
        expect(page.status_code).to eq(200)
      end
      
      xit 'has parent node' do
        expect(page).to have_content(/First Topic/)
      end
      
      xit 'does not have any sub_topic' do
        expect(page).to_not have_content(/Sub Topic/)
      end
    end

    describe 'creation' do
      before do
        visit new_topic_path
      end
      
      xit 'has a new form that can be reached' do
        expect(page.status_code).to eq(200)
      end
  
      xit 'can be created from new form page' do
        fill_in 'topic[title]', with: 'Some topic'
        
        expect { click_on "Create Topic"}.to change(Topic, :count).by(1)
      end
    
      xit 'id pass into new action' do
        visit topic_path(@topic)
        expect(find_link('New topic')[:href]).to eq("/topics/new?parent_id=#{@topic.id}")
      end
    end
    
    describe 'edit' do
      xit 'can be edited' do
        visit edit_topic_path(@topic)
        fill_in 'topic[title]', with: 'Edit topic title'
        click_on "Update Topic"
        
        expect(page).to have_content("Edit topic title")
      end
    end
    
    describe 'delete' do
      xit 'topic can be deleted' do
        topic_delete = Topic.create(title: "Delete Topic")
        visit root_path
        
        expect { click_on("delete_topic_#{topic_delete.id}_from_index") }.to change(Topic, :count).by(-1)
      end
    end
end
