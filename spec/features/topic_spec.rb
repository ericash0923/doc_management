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
