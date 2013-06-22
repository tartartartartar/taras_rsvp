class CommentsController < ApplicationController

  def create
    #@comments = Comment.all
    @comment = Comment.new(params[:comment])
    if (@comment.save)
      flash[:success] = "Comment added."
      redirect_to root_url
    else
      @comments = Comment.paginate(:page => params[:page], 
        :per_page => 5,
        :order => "created_at DESC")
      render :template => "static_pages/home", :locals => {:comment => @comment}
    end
  end

  def destroy
    #raise params.inspect
    Comment.find(params[:id]).destroy
    flash[:success] = "comment destroyed."
    redirect_to comments_url
  end

  def index
    @comments = Comment.all
  end
  
end

