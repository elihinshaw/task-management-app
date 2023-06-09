class TasksController < ApplicationController
  def index
    @tasks = Tasks.all
    render :index
  end

  def show
    @tasks = Tasks.find_by(id: params[:id])
    render :show
  end

  def new
    @tasks = Tasks.new
    render :new
  end

  def create
    @tasks = Tasks.create(
      name: params[:tasks][:name],
      description: params[:tasks][:description],
      priority: params[:tasks][:priority],
      due_date: params[:tasks][:due_date],
      status: params[:tasks][:status],
      progress: params[:tasks][:progress],
    )
    redirect_to "/tasks"
  end

  def edit
    @tasks = Tasks.find_by(id: params[:id])
    render :edit
  end

  def update
    @tasks = Tasks.find_by(id: params[:id])
    @tasks.update(
      name: params[:tasks][:name],
      description: params[:tasks][:description],
      priority: params[:tasks][:priority],
      due_date: params[:tasks][:due_date],
      status: params[:tasks][:status],
      progress: params[:tasks][:progress],
    )
    redirect_to "/tasks"
  end

  def destroy
    @tasks = Tasks.find_by(id: params[:id])
    @tasks.destroy
    redirect_to "/tasks", status: :see_other
  end
end
