class TimecardsController < ApplicationController
  load_and_authorize_resource
  before_filter :locked_if_completed, :only => [:edit, :update]

  def index
    @group = current_user.groups.first
    @timecards = @group.timecards
    @series = Timecard.get_series(@group)
  end

  def show
    @timecard = Timecard.find(params[:id])
    @period = @timecard.timecard_period
    @group = @timecard.user.groups.first
    @charge_numbers = @group.charge_numbers

  end

  def new
    @timecard = Timecard.new
    @timecard_period = TimecardPeriod.find(params[:timecard_period_id])
    @group = current_user.groups.first
    @charge_numbers = @group.charge_numbers
    
    if @charge_nums.empty? 
      redirect_to user_path(current_user, :view_option => "time_cards"), :notice  => "Your group does not have any charge numbers."
    end
  end

  def create
    @timecard = Timecard.new(params[:timecard])
    @group = current_user.groups.first
    if @timecard.save
        redirect_to user_path(current_user, :view_option => "time_cards"), :notice  => "Successfully created timecard."
    else
      render :action => 'new'
    end
  end

  def edit
    @timecard = Timecard.find(params[:id])
    @timecard_period = TimecardPeriod.find(@timecard.timecard_period_id)
    @available_days_for_actuals = @timecard_period.available_days_for_actuals
    @available_days_for_estimates = @timecard_period.available_days_for_estimates
    @group = current_user.groups.first
    @charge_numbers = @group.charge_numbers.map { |chnm| [chnm.description, chnm.id] }
    @time_log = TimeLog.new
    @actual_time_logs = @timecard.time_logs.where(:actual => true)
    @estimate_time_logs = @timecard.time_logs.where(:actual => false)
  end

  def update
    @timecard = Timecard.find(params[:id])
			if params[:submit_card] 
				@timecard.completed = true
			end
    if @timecard.update_attributes(params[:timecard])
      redirect_to user_path(current_user, :view_option => "time_cards"), :notice  => "Successfully updated timecard."
    else
      render :action => 'edit'
    end
  end
  
  def set_completed
    @timecard = Timecard.find(params[:id])
    @timecard.completed = true
    @timecard.save
    if @timecard.save
      redirect_to user_path(current_user, :view_option => "time_cards"), :notice  => "Successfully submitted timecard."
    else
      render :action => 'edit'
    end
  end

  def remove_completed
    if !@timecard.blank? && Time.now <= @timecard.timecard_period.due_on && @timecard.completed
      @timecard = Timecard.find(params[:id])
      @timecard.completed = false
      @timecard.save
      if @timecard.save
        redirect_to user_path(current_user, :view_option => "time_cards"), :notice  => "Successfully unsubmitted timecard."
      else
        redirect_to user_path(current_user, :view_option => "time_cards"), :notice  => "An error occurred when unsubmitting your timecard."
      end
    else
      redirect_to user_path(current_user, :view_option => "time_cards"), :notice  => "It is past the due date, you may not unsubmit."
    end
  end

  def destroy
    @timecard = Timecard.find(params[:id])
    @timecard.destroy
    redirect_to timecards_path, :notice => "Successfully destroyed timecard."
  end

  private
  def locked_if_completed
    @timecard = Timecard.find(params[:id])
    if @timecard.completed
      redirect_to user_path(current_user, :view_option => "time_cards"), :notice  => "You already submitted this card."
    end
  end
end
