class PagesController < ApplicationController
  layout "clean", :except => [:roster, :dashboard, :peer_review_viewer]
  before_filter :finished_signup, :except => :finished_first_step
  before_filter :is_class_staff, :except => [:home, :finished_first_step]
  before_filter :is_grouped, :except => :finished_first_step
  
  def home
    if user_signed_in?
      if current_user.admin or current_user.tutor
        redirect_to dashboard_path
      end
    end
  end
  
  def stats
    @users = User.where(:signup_status => "completed", :admin => false, :tutor => false)
    @users_count = @users.count
    @limbo_users = User.where("signup_status != ? AND admin = ?", "completed", "false")
    @limbo_count = @limbo_users.count
    @unregistered_users = User.get_unregistered_users
    render :layout => "application"
  end
  
  def configure_grouping_algorithm
    @users = User.where(:admin => false, :tutor => false)
  end
  
  def manage_grouping
    
    render :layout => "application"
  end
  
  def dashboard
    @groups = Group.all
    @view_option = params[:view_option]
    @review_periods = ReviewPeriod.order("created_at desc")
    @grouped_users_count = User.grouped_users_count
    @timecard_periods = TimecardPeriod.all
    render :layout => 'application'
  end
  
  def roster
    @user_objects = Group.export
    @groups = Group.all
    render :layout => 'application'
  end
  
  def peer_review_viewer
    @groups = Group.all
    @review_periods = ReviewPeriod.where("ends_on <= :today OR starts_on <= :today AND ends_on >= :today", :today => Date.today).order("created_at desc")
    group_param = params["group"]["id"] if params["group"]
    user_param = params["user"]["id"] if params["user"]

    if !@groups.blank?
      if group_param != nil
        @selected_group = Group.find(group_param)
        @users = @selected_group.users
        if user_param != nil
          @selected_user = User.find(user_param)
          if !@selected_user.exists_in?(@selected_group)
            @selected_user = @users.first
          end
        else
          @selected_user = @users.first
        end
      else
        @selected_group = @groups.first
        @users = @selected_group.users
        @selected_user = @users.first
      end
    end
    render :layout => 'application'
  end

  def time_card_grader
    @timecard_periods = TimecardPeriod.where("actual_starts_on <= ?", Date.today)
    @users = User.where(:admin => false, :tutor => false).order("last_name ASC")
    render :layout => "application"
  end

  def peer_review_grader
    @review_periods = ReviewPeriod.where("starts_on <= ?", Date.today)
    @users = User.where(:admin => false, :tutor => false).order("last_name ASC")
    render :layout => 'application'
  end
  
  def disable_all_user_accounts
    users = User.where(:admin => false, :tutor => false)
    for user in users
      user.account_disabled = true
      user.save
    end
    
    flash[:notice] = "Successfully disabled access to Groupme for all user accounts."
    redirect_to dashboard_path
  end
  
  def enable_all_user_accounts
    users = User.where(:admin => false, :tutor => false)
    for user in users
      user.account_disabled = false
      user.save
    end
    
    flash[:notice] = "Successfully enabled access to Groupme for all user accounts."
    redirect_to dashboard_path
  end
  
  
  private
  
  def finished_first_step
    
  end
  
  def finished_signup
    if current_user && current_user.signup_status == 'account_step'
      redirect_to signup_wizard_path(:step => '2', :resource => current_user)
      false
    elsif current_user && current_user.signup_status == 'schedule_step'
      redirect_to signup_wizard_path(:step => '3', :resource => current_user)
      false
    end
  end

  def is_grouped
    if current_user and !current_user.admin and !current_user.groups.empty? and !current_user.account_disabled
      redirect_to current_user.groups.first
      false
    end
  end
end
