class TimecardPeriodsController < ApplicationController
  load_and_authorize_resource
  before_filter :is_class_staff

  def index
    @timecard_periods = TimecardPeriod.all
  end

  def show
    @timecard_period = TimecardPeriod.find(params[:id])
    @groups = Group.all
  end

  def new
    @timecard_period = TimecardPeriod.new
  end

  def create
    start_param = Date.civil(params[:range][:"start_date(1i)"].to_i,params[:range][:"start_date(2i)"].to_i,params[:range][:"start_date(3i)"].to_i)
    num_weeks = params[:num_weeks].to_i
    TimecardPeriod.make_periods(start_param, num_weeks) 
    redirect_to timecard_periods_path, :notice => "Successfully created timecard periods."
  end

  def edit
    @timecard_period = TimecardPeriod.find(params[:id])
  end

  def update
    @timecard_period = TimecardPeriod.find(params[:id])
    if @timecard_period.update_attributes(params[:timecard_period])
      redirect_to timecard_periods_path, :notice  => "Successfully updated timecard period."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @timecard_period = TimecardPeriod.find(params[:id])
    @timecard_period.destroy
    redirect_to timecard_periods_path, :notice => "Successfully destroyed timecard period."
  end

  def delete_multiple
    unless(params[:timecard_period_ids].nil?)
      @timecard_periods = TimecardPeriod.find(params[:timecard_period_ids])
      for per in @timecard_periods
        per.destroy
      end
      redirect_to timecard_periods_path, :notice => "Successfully deleted timecard period(s)."
    else
      redirect_to timecard_periods_path, :notice => "No timecard periods selected."
    end
  end




end
