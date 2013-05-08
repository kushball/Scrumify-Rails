class GroupsController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate_user!
  
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @member_count = @group.users.count
    @view_option = params[:view_option]
    
    if !@group.nil?
      @timecards = @group.timecards
      @series = Timecard.get_series(@group)
      @donut = Timecard.get_donut_chart(@group)
      @pie = Timecard.get_pie_chart(@group)
      @charge_numbers = @group.charge_numbers
      @timecard_periods = TimecardPeriod.where("actual_starts_on <= :today", :today => Date.today)
      @current_timecard_period = TimecardPeriod.where("actual_starts_on <= :today AND actual_ends_on >= :today", :today => Date.today).first
      if !@current_timecard_period.blank?
        @current_timecard = current_user.get_active_timecard
      else
        @current_timecard = nil
      end

      #Wall
      @root_comments = @group.root_comments
      @all_comments = @group.comment_threads
    end 
    
    # Notices
    @current_review_period = ReviewPeriod.current
    
    # Wall
    @comment = Comment.new
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(params[:group])
    @group.creator = current_user.id
    @group.total_members = 1
    if @group.save
      @membership = Membership.new(:group_id => @group.id, :user_id => current_user.id)
      if @membership.save
        redirect_to @group, :notice => "Successfully created group."
      else
        flash[:error] = "We were not able to create your membership with this group, please try again :/"
        render :action => 'new'
      end
    else
      render :action => 'new'
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(params[:group])
      redirect_to @group, :notice  => "Successfully updated group."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_url, :notice => "Successfully destroyed group."
  end

  def change_group
    user = User.find(params[:change_user])
    was_group_leader = user.is_group_leader?
    was_group_deputy = user.is_group_deputy?
    old_group = user.groups.first
    old_membership = user.memberships.first
    
    old_membership.destroy
    if was_group_leader
      old_group.creator = old_group.users.first.id
    end
    if was_group_deputy
      if old_group.deputy_1 == user.id
        old_group.deputy_1 = nil
      elsif old_group.deputy_2 == user.id
        old_group.deputy_2 = nil
      end
    end
    new_group = Group.find(params[:new_group])
    new_group.add_user(user, "manual change")
    redirect_to roster_path, :notice => "Successfully moved #{user.first_name} #{user.last_name} from #{old_group.name} to #{new_group.name}."
  end

  def group_users
    size = params[:group_size]
    difference = params[:group_size_difference]
    
    if size.blank? or difference.blank?
      redirect_to configure_grouping_algorithm_path, :alert => "You did not completely fill out the form!"
    else
      Group.group_users(Integer(size), Integer(difference))
      redirect_to roster_path, :notice => "Successfully grouped users!"
    end
  end
end
