class DocumentsController < ApplicationController
  before_action :set_document, only: [:destroy]
  
  def new
    @document = Document.new
  end
  
  def create
    @document = Document.new(document_params)
    
    if @document.save
      redirect_to root_path, notice: "Your document was created successfully"
    else 
      render :new
    end
  end
  
  def destroy
    @document.destroy
    redirect_to root_path, notice: 'Your document was deleted successfully'
  end
  
  private
  
  def set_document
    @document = Document.find(params[:id])
  end
  
  def document_params
    params.require(:document).permit(:name, :topic_id)
  end
end
