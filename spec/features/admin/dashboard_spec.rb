require 'rails_helper'

describe 'navigate' do
    describe 'admin index' do
      it 'does not allow non-admin to access admin panel' do
        visit admin_path
        expect(current_path).to eq(new_admin_session_path)
      end
      
      it 'can be reached by an admin users' do
        admin_user = Admin.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")
        login_as(admin_user, :scope => :admin)
    
        visit admin_path
        expect(current_path).to eq(admin_path)
      end
    end
end