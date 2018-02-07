module TopicsHelper
  
  def folder_status data
    if admin_signed_in?
     render 'topic', topics: data
     else
      render 'topic', topics: data.non_admin
    end 
  end
  
end
