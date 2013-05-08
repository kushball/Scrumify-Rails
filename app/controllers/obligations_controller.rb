class ObligationsController < ApplicationController
  load_and_authorize_resource
  
  def index
    @obligations = Obligation.all
  end

  def show
    @obligation = Obligation.find(params[:id])
  end

  def new
    @obligation = Obligation.new
  end

  def create
    @obligation = Obligation.new(params[:obligation])
    if @obligation.save
      redirect_to @obligation, :notice => "Successfully created obligation."
    else
      render :action => 'new'
    end
  end

  def edit
    @obligation = Obligation.find(params[:id])
  end

  def update
    @obligation = Obligation.find(params[:id])
    if @obligation.update_attributes(params[:obligation])
      redirect_to @obligation, :notice  => "Successfully updated obligation."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @obligation = Obligation.find(params[:id])
    @obligation.destroy
    redirect_to obligations_url, :notice => "Successfully destroyed obligation."
  end
end
