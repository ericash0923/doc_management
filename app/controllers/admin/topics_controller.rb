class Admin::TopicsController < Admin::AdminController
  before_action :set_admin_topic, only: [:show, :edit, :update, :destroy, :toggle_status]

  def index
    @admin_topics = Topic.arrange_as_array({:order => 'title'})
  end

  def show
  end

  def new
    @admin_topic = Topic.new(parent_id: params[:parent_id])
  end

  def edit
  end

  def create
    @admin_topic = Topic.new(admin_topic_params)

    if @admin_topic.save
      redirect_to [:admin, @admin_topic], notice: 'Topic was successfully created.'
    else
      render :new 
    end
  end

  def update
    if @admin_topic.update(admin_topic_params)
     redirect_to [:admin, @admin_topic], notice: 'Topic was successfully updated.'
    else
      render :edit 
    end
  end

  def destroy
    @admin_topic.destroy
      redirect_to [:admin, @admin_topic], notice: 'Topic was successfully destroyed.' 
  end
  
  def toggle_status
    if @admin_topic.admin?
      @admin_topic.non_admin!
    elsif @admin_topic.non_admin?
      @admin.admin!
    end
      
    redirect_to admin_path, notice: "Folder status has been updated"
  end

  private
    def set_admin_topic
      @admin_topic = Topic.find(params[:id])
    end

    def admin_topic_params
      params.require(:topic).permit(:title, :parent_id)
    end
end
