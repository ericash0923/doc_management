require 'rails_helper'

describe 'admin topic' do
  before do
    @topic = Topic.create!(title: "First Topic")
    @sub_topic = Topic.create!(title: "Sub Topic", parent: @topic)
    admin_user = Admin.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")
    login_as(admin_user, :scope => :admin)
  end


    describe 'creation' do
      before do
        visit new_admin_topic_path
      end
      
      it 'has a new form that can be reached' do
        expect(page.status_code).to eq(200)
      end
  
      it 'can be created from new form page' do
        fill_in 'topic[title]', with: 'Some topic'
        
        expect { click_on "Save"}.to change(Topic, :count).by(1)
      end
    
      it 'id pass into new action' do
        visit admin_topic_path(@topic)
        click_button 'New Folder'
        expect(page).to have_current_path("/admin/topics/new?parent_id=#{@topic.id}")
      end
    
    describe 'edit' do
      it 'can be edited' do
        visit edit_admin_topic_path(@topic)
        fill_in 'topic[title]', with: 'Edit topic title'
        click_on "Save"
        
        expect(page).to have_content("Edit topic title")
      end
    end
    
    describe 'delete' do
      it 'topic can be deleted' do
        topic_delete = Topic.create(title: "Delete Topic")
        visit admin_path
        
        expect { click_on("delete_topic_#{topic_delete.id}_from_index") }.to change(Topic, :count).by(-1)
      end
    end
  end
end

