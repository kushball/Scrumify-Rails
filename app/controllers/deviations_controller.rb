class DeviationsController < ApplicationController
  def index
    @deviations = Deviation.all
  end

  def show
    @deviation = Deviation.find(params[:id])
  end

  def new
    @deviation = Deviation.new
  end

  def create
    @deviation = Deviation.new(params[:deviation])
    if @deviation.save
      redirect_to @deviation, :notice => "Successfully created deviation."
    else
      render :action => 'new'
    end
  end

  def edit
    @deviation = Deviation.find(params[:id])
  end

  def update
    @deviation = Deviation.find(params[:id])
    if @deviation.update_attributes(params[:deviation])
      redirect_to @deviation, :notice  => "Successfully updated deviation."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @deviation = Deviation.find(params[:id])
    @deviation.destroy
    redirect_to deviations_url, :notice => "Successfully destroyed deviation."
  end
end
