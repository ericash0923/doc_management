class SearchController < ApplicationController
  layout 'application'
  
  def index
    @documents = Document.ransack(name_cont: params[:q]).result(distinct:true).limit(5)
    
    respond_to do |format|
      format.html {}
      format.json {
        @documents = @documents.limit(5)
      }
    end
  end
end
