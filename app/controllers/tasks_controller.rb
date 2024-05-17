class TasksController < ApplicationController
  load_and_authorize_resource

  before_action :set_task, only: %i[show edit update destroy]

  # GET /tasks
  def index
    @tasks = Task.all

    respond_to do |format|
      format.html
      format.xlsx { send_data tasks_to_xlsx, filename: "tasks-#{Date.today}.xlsx" }
    end
  end

  # GET /tasks/1
  def show; end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit; end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to tasks_url, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to tasks_url, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy!

    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = Task.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def task_params
    params.require(:task).permit(:title, :content)
  end

  def tasks_to_xlsx
    package = Axlsx::Package.new
    workbook = package.workbook

    workbook.add_worksheet(name: 'Tasks') do |sheet|
      sheet.add_row %w[Title Content]

      @tasks.each do |task|
        sheet.add_row [task.title, task.content]
      end
    end

    package.to_stream.read
  end
end
