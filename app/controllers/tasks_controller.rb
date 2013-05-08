class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
		respond_to do |format|
    	format.html
			format.js
		end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    if @task.save
			respond_to do |format|
      	format.html { redirect_to @task, :notice => "Successfully created task." }
  			format.js
  		end
    else
      render :action => 'new'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
      redirect_to @task, :notice  => "Successfully updated task."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_url, :notice => "Successfully destroyed task."
  end
end
