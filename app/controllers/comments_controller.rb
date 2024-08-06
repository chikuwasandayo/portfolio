class CommentsController < ApplicationController
  def index
    @comment = Comment.all

  end

  def show
  end

  def edit
  end

  def new
    @comment = Comment.new

  end
  def destroy
    comment = Comment.find(params[:id])
    title = comment.title 
    comment.destroy
    redirect_to title_path(title)
  end
  def create
    @title = Title.find(params[:title_id])
    comment = @title.comments.new(comment_params)
   if comment.save
    redirect_to title_path(@title)

   else
   end
  end

private
def comment_params
  params.require(:comment).permit(:message)
end

end
