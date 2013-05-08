class ReviewPeriodsController < ApplicationController
  load_and_authorize_resource
  
  def index
    @review_periods = ReviewPeriod.all
  end

  def show
    @review_period = ReviewPeriod.find(params[:id])
  end

  def new
    @review_period = ReviewPeriod.new
  end

  def create
    @review_period = ReviewPeriod.new(params[:review_period])
    if @review_period.save
      redirect_to dashboard_path(:view_option => "peer_reviews"), :notice => "Successfully created review period."
    else
      render :action => 'new'
    end
  end

  def edit
    @review_period = ReviewPeriod.find(params[:id])
  end

  def update
    @review_period = ReviewPeriod.find(params[:id])
    if @review_period.update_attributes(params[:review_period])
      redirect_to review_periods_path, :notice  => "Successfully updated review period."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @review_period = ReviewPeriod.find(params[:id])
    @review_period.destroy
    redirect_to review_periods_url, :notice => "Successfully destroyed review period."
  end
end
