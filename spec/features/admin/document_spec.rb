require 'rails_helper'

describe 'creation' do
  before do
    @topic = Topic.create(title: "Test Topic")
    admin_user = Admin.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")
    login_as(admin_user, :scope => :admin)
  end
  
  it 'has new action form that can be reached' do
    visit new_admin_document_path
    expect(page.status_code).to eq(200)
  end
  
  it 'can be created from new form page' do
    visit admin_path
    click_button 'New Document'
    fill_in 'document[name]', with: 'New Doc'
    select('Test Topic', :from => 'document[topic_id]')
    
    expect { click_on "Upload"}.to change(Document, :count).by(1)
  end
  
  it 'Document can be deleted' do
    document_delete = Document.create(name: "Delete Doc", topic_id: @topic.id)
    visit admin_documents_path
    
    expect { click_on("delete_document_#{document_delete.id}_from_index") }.to change(Document, :count).by(-1)
  end
end

