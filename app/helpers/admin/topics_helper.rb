module Admin::TopicsHelper
  
  def folder_status_color folder
   'color: red;' if folder.admin?
  end
 
end
