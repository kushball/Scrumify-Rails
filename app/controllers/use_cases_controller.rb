class UseCasesController < ApplicationController
  load_and_authorize_resource
  
  def index
    @use_cases = UseCase.all
  end

  def show
    @use_case = UseCase.find(params[:id])
  end

  def new
    @use_case = UseCase.new
  end

  def create
    @use_case = UseCase.new(params[:use_case])
    if @use_case.save
      redirect_to @use_case, :notice => "Successfully created use case."
    else
      render :action => 'new'
    end
  end

  def edit
    @use_case = UseCase.find(params[:id])
  end

  def update
    @use_case = UseCase.find(params[:id])
    if @use_case.update_attributes(params[:use_case])
      redirect_to @use_case, :notice  => "Successfully updated use case."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @use_case = UseCase.find(params[:id])
    @use_case.destroy
    redirect_to use_cases_url, :notice => "Successfully destroyed use case."
  end
end
