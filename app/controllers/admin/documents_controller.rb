class Admin::DocumentsController < Admin::AdminController
  before_action :set_document, only: [:edit, :update, :destroy]
  
  def index
    @admin_documents = Document.order('name ASC')
  end
  
  def new
    @admin_document = Document.new(topic_id: params[:topic_id])
  end
  
  def edit
  end
  
  def create
    @admin_document = Document.new(document_params)
    
    if @admin_document.save
      redirect_to [:admin, @admin_topic], notice: "Your document #{@admin_document.name} has been uploader"
    else 
      render :new
    end
  end
  
  def destroy
    @admin_document.destroy
    redirect_to [:admin, @admin_document], notice: "Your #{@admin_document.name} was deleted successfully"
  end
  
  private
  
  def set_document
    @admin_document = Document.find(params[:id])
  end
  
  def document_params
    params.require(:document).permit(:name, :attachment, :topic_id)
  end
end
