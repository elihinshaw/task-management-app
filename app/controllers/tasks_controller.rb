class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render :index
  end

  def show
    @task = Task.find_by(id: params[:id])
    render :show
  end

  def new
    @task = Task.new
    render :new
  end

  def create
    @task = Task.create(
      name: params[:task][:name],
      description: params[:task][:description],
      priority: params[:task][:priority],
      due_date: params[:task][:due_date],
      status: params[:task][:status],
      progress: params[:task][:progress],
    )
    redirect_to "/tasks"
  end

  def edit
    @task = Task.find_by(id: params[:id])
    render :edit
  end

  def update
    @task = Task.find_by(id: params[:id])
    @task.update(
      name: params[:task][:name],
      description: params[:task][:description],
      priority: params[:task][:priority],
      due_date: params[:task][:due_date],
      status: params[:task][:status],
      progress: params[:task][:progress],
    )
    redirect_to "/tasks"
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    @task.destroy
    redirect_to "/tasks", status: :see_other
  end
end
