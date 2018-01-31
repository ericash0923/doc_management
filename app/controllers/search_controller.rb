class SearchController < ApplicationController
  before_action :force_json, only: :index
  
  def index
    @documents = Document.ransack(name_cont: params[:q]).result(distinct:true).limit(5)
  end
  
  private
  
  def force_json
    request.format = :json
  end
end
