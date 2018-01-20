class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  
  def index
    @topics = Topic.roots
  end
  
  def new
    @topic = Topic.new(parent_id: params[:parent_id])
  end
  
  def show
  end
  
  def edit
  end
  
  def create
    @topic = Topic.new(topic_params)
    
    if @topic.save
      redirect_to @topic, notice: "Your topic was created successfully"
    else 
      render :new
    end
  end
  
  def update
    
    if @topic.update(topic_params)
      redirect_to root_path, notice: 'Your topic was edited successfully'
    else
      render :edit
    end
  end
  
  def destroy
    @topic.destroy
    redirect_to root_path, notice: 'Your topic was deleted successfully'
  end
  
  private
  
  def set_topic
    @topic = Topic.find(params[:id])
  end
  
  def topic_params
    params.require(:topic).permit(:title, :parent_id)
  end
end
