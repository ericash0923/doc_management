class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end
  
  def new
    @topic = Topic.new
  end
  
  def show
    @topic = Topic.find(params[:id])
  end
  
  def edit
    @topic = Topic.find(params[:id])
  end
  
  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to root_path, notice: "Your topic was created successfully"
    else 
      render :new
    end
  end
  
  def update
    @topic = Topic.find(params[:id])
    
    if @topic.update(topic_params)
      redirect_to root_path, notice: 'Your topic was edited successfully'
    else
      :edit
    end
  end
  
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    
    redirect_to root_path, notice: 'Your topic was deleted successfully'
  end
  
  private
  
  def topic_params
    params.require(:topic).permit(:title, :parent_id)
  end
end
