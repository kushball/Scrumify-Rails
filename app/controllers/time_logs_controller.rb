class TimeLogsController < ApplicationController
  load_and_authorize_resource
  
  def index
    @time_logs = TimeLog.all
  end

  def show
    @time_log = TimeLog.find(params[:id])
  end

  def new
    @time_log = TimeLog.new
  end

  def create
    @time_log = TimeLog.new(params[:time_log])
    @timecard = Timecard.find(@time_log.timecard)
    @timecard_period = TimecardPeriod.find(@timecard.timecard_period_id)
    @available_days_for_actuals = @timecard_period.available_days_for_actuals
    @available_days_for_estimates = @timecard_period.available_days_for_estimates
    @group = current_user.groups.first
    @charge_numbers = @group.charge_numbers.map { |chnm| [chnm.description, chnm.id] }
    
    if @time_log.save
      flash[:notice] = "Successfully created time log."
      respond_to do |format|
      	format.html {redirect_to edit_timecard_path(current_user.get_active_timecard), :notice => "Successfully created time log."}
  			format.js
  		end
    end
  end

  def edit
    @time_log = TimeLog.find(params[:id])
  end

  def update
    @time_log = TimeLog.find(params[:id])
    @timecard = Timecard.find(@time_log.timecard)
    @timecard_period = TimecardPeriod.find(@timecard.timecard_period_id)
    @available_days_for_actuals = @timecard_period.available_days_for_actuals
    @available_days_for_estimates = @timecard_period.available_days_for_estimates
    @group = current_user.groups.first
    @charge_numbers = @group.charge_numbers.map { |chnm| [chnm.description, chnm.id] }
    
    if @time_log.update_attributes(params[:time_log])
      flash[:notice] = "Successfully updated time log."
      respond_to do |format|
      	format.html {redirect_to edit_timecard_path(current_user.get_active_timecard), :notice => "Successfully updated time log."}
  			format.js
  		end
    else
      flash[:error] = "Must enter a valid number of hours."
    end
  end

  def destroy
    @time_log_id = params[:id]
    @time_log = TimeLog.find(@time_log_id)
    @time_log.destroy
    flash[:notice] = "Successfully destroyed time log."
  end
end
