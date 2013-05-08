class UsersController < ApplicationController
  load_and_authorize_resource

  def index
	  @users = User.all
		@users = @users.paginate :page => params[:page], :per_page => 60
    @count = @users.count
  end

  def show
    @user = User.find(params[:id])
    @group = @user.groups.first
    @membership = @user.memberships.first
    @view_option = params[:view_option]
    @review_periods = ReviewPeriod.where("ends_on <= :today OR starts_on <= :today AND ends_on >= :today", :today => Date.today).order("created_at desc")
    @timecard_periods = TimecardPeriod.where("actual_starts_on <= :today", :today => Date.today)
    @timecards = @user.timecards
    if !@group.nil?
      @pie = Timecard.get_user_pie_chart_act_or_est(@user, @group.name, @group.charge_numbers, true)
      @est_pie = Timecard.get_user_pie_chart_act_or_est(@user, @group.name, @group.charge_numbers, false)
      @series = Timecard.get_charge_number_series_for_user(@user, @group.name, @group.charge_numbers)
      @charge_numbers = @group.charge_numbers
    end
  end
  
  def group_users
    Group.group_users
    redirect_to roster_path
  end

	def change_role_to_student
		@user = User.find(params[:id])
		@user.tutor = false
		@user.save
		redirect_to users_path, :notice => @user.name + " 's role is now student."
	end
	
	def change_role_to_tutor
		@user = User.find(params[:id])
		@user.tutor = true
		@user.save
		redirect_to users_path, :notice => @user.name + " 's role is now tutor."
	end
end
