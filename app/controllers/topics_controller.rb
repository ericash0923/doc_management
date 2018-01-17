class TopicsController < ApplicationController
  def index
    @all = Topic.all
    @topic = Topic.where(ancestry: nil)
    @subtopic = Topic.where(ancestry: 1)
    @subtopic1 = Topic.where(ancestry: 2)
  end
end
