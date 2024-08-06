class TitlesController < ApplicationController
  def index
    @titles = Title.all
  end

  def show
    @title = Title.find(params[:id])
    @comment = Comment.new
    @comments = @title.comments
  end

  def edit
  end

  def new
    @title = Title.new
  end

  def destroy
    title = Title.find(params[:id])
    title.destroy
    redirect_to titles_url
  end
  
  def create
    @title = Title.new(title_params)
    if @title.save
      redirect_to titles_path
    else
      render :new
    end
  end

  
private
  def  title_params
    params.require(:title).permit(:tname)
  end
end
