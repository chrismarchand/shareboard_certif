class ContentsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def index
    @contents = Content.all
    @content = Content.new
  end

  def new
    @content = current_user.contents.new
  end

  def create
    @content = current_user.contents.new(content_params)
    if @content.save
      redirect_to content_path(@content)
    else
      render :index
    end
  end

  def show
    @content = Content.new
  end

  def edit
  end

  def destroy
    @content.destroy
    flash[:notice] = "Photo supprimé!"
    redirect_to contents_path
  end

  private

  def set_topic
    @content = Content.find(params[:id])
  end

  def content_params
    params.require(:content).permit(:title, :description, :category, :html_content)
  end
end
