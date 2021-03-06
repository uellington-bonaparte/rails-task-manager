class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  # As a user, I can list tasks
  def index
    @tasks = Task.all
  end

  # As a user, I can view the details of a task
  def show
    # @task = Task.find(params[:id])
    # substituido pela funcao no before_action
  end

  # As a user, I can add a new task
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to tasks_path(@task)
  end

  # As a user, I can edit a task (mark as completed / update title & details)
  def edit
    # substituido pela funcao no before_action
    # @task = Task.find(params[:id])
  end

  def update
    # substituido pela funcao no before_action
    # @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  # As a user, I can remove a task
  def destroy
    # substituido pela funcao no before_action
    # @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private

  # define quais parametros podem ser gravados/editados (o padrao é negar tudo)
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
