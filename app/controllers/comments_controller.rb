class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render :index
  end

  def show
    @comment = Comment.find_by(id: params[:id])
    render :show
  end

  def new
    @comment = Comment.new
    render :new
  end

  def create
    @comment = Comment.create(
      content: params[:comment][:content],
      user_id: params[:comment][:user_id],
      task_id: params[:comment][:task_id],
    )
    redirect_to "/comments"
  end

  def edit
    @comment = Comment.find_by(id: params[:id])
    render :edit
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    @comment.update(
      content: params[:comment][:content],
      user_id: params[:comment][:user_id],
      task_id: params[:comment][:task_id],
    )
    redirect_to "/comments"
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
    redirect_to "/comments", status: :see_other
  end
end
