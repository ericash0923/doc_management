require 'rails_helper'

# describe 'creation' do
#   xit 'has new action form that can be reached' do
#     visit new_document_path
#     expect(page.status_code).to eq(200)
#   end
  
#   xit 'can be created from new form page' do
#     topic = Topic.create(title: "Test Topic")
#     visit new_document_path
#     fill_in 'document[name]', with: 'New Doc'
#     select('Test Topic', :from => 'document[topic_id]')
    
#     expect { click_on "Create Document"}.to change(Document, :count).by(1)
#   end
  
#   xit 'Document can be deleted' do
#     topic = Topic.create(title: "Test Topic")
#     document_delete = Document.create(name: "Delete Doc", topic_id: topic.id)
#     visit topic_path(topic)
    
#     expect { click_on("delete_document_#{document_delete.id}_from_index") }.to change(Document, :count).by(-1)
#   end
# end

