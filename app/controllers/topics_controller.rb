class TopicsController < ApplicationController
  def index
    @topic = Topic.all
  end
  
  def new
    @topic = Topic.new
  end
  
  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to root_path, notice: "Your topic was created successfully"
    else 
      render :new
    end
  end
  
  private
  
  def topic_params
    params.require(:topic).permit(:title)
  end
end
