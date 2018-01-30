class TopicsController < ApplicationController
  before_action :set_topic, only: [:show]
  
  def index
    @topics = Topic.roots
    @recent = Document.order(created_at: :desc).limit(5)
  end
  
  def show
  end
  
  private
  
  def set_topic
    @topic = Topic.find(params[:id])
  end
  
  def topic_params
    params.require(:topic).permit(:title, :parent_id)
  end
end
