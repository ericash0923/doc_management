class SearchController < ApplicationController
  
  def index
    render json: {documents: []}
  end
end
