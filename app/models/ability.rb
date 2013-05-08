class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new  # guest user
    
    if user.admin
      can :manage, :all
		elsif user.tutor
			can :manage, :all
    elsif !user.email.blank? and !user.account_disabled
      # Registration
      can :read, @registration
      can :update, @registration
      can :signup_wizard, @registration
      
      # Schedule
      can :create, Schedule
      can :show, Schedule
      can :update, Schedule, :user_id => user.id
      
      # Day
      can :create, Day
      can :show, Day
      can :update, Day, :schedule_id => user.schedule.id if user.schedule
      can :destroy, Day, :schedule_id => user.schedule.id if user.schedule
      
      #Roles
      if user.is_group_deputy?
        can :read, Role
        can :create, Role
        can :update, Role
        can :destroy, Role
      end
      
      # Time Block
      can :create, TimeBlock
      can :show, TimeBlock
      can :update, TimeBlock, :day => { :schedule_id => user.schedule.id } if user.schedule
      can :destroy, TimeBlock, :day => { :schedule_id => user.schedule.id } if user.schedule
      
      # Membership
      can :update, Membership, :user_id => user.id
      
      # Group
      can :show, Group
      can :update, Group, :creator => user.id
      can :update, Group, :deputy_1 => user.id
      can :update, Group, :deputy_2 => user.id
      
      # Time Cards
      can :show, Timecard, :user_id => user.id
      can :update, Timecard, :user_id => user.id
      can :set_completed, Timecard, :user_id => user.id
      can :remove_completed, Timecard, :user_id => user.id

      # User
      can :show, User
      can :update, User, :id => user.id
      
      # Review Period
      can :show, ReviewPeriod
      
      # Peer Review
      can :create, PeerReview
      
      # The following is equivalent to the.. following:
      # user can read PeerReview if :user_id => user.id OR :reviewee_id => user.id
      can :show, PeerReview, :user_id => user.id
      can :show, PeerReview, :reviewee_id => user.id
      
      can :update, PeerReview, :user_id => user.id

    
      # Time Logs   ### May need to be more specific (limit to user)
      can :create, TimeLog
      can :show, TimeLog, :timecard => { :user_id => user.id }
      can :update, TimeLog, :timecard => { :user_id => user.id }
      can :destroy, TimeLog, :timecard => { :user_id => user.id }

      # Charge Numbers   ### May need to be more specific
      can :create, ChargeNumber
      can :show, ChargeNumber
      can :update, ChargeNumber, :group => { :creator => user.id }
      can :update, ChargeNumber, :group => { :deputy_1 => user.id }
      can :update, ChargeNumber, :group => { :deputy_2 => user.id }
      can :destroy, ChargeNumber, :group => { :creator => user.id }
      can :destroy, ChargeNumber, :group => { :deputy_1 => user.id }
      can :destroy, ChargeNumber, :group => { :deputy_2 => user.id }
    elsif !user.email.blank?
      # Registration
      can :read, @registration
      can :update, @registration
      can :signup_wizard, @registration
      
      # Schedule
      can :create, Schedule
      can :show, Schedule
      can :update, Schedule, :user_id => user.id
      
      # Day
      can :create, Day
      can :show, Day
      can :update, Day, :schedule_id => user.schedule.id if user.schedule
      can :destroy, Day, :schedule_id => user.schedule.id if user.schedule
      
      # Time Block
      can :create, TimeBlock
      can :show, TimeBlock
      can :update, TimeBlock, :day => { :schedule_id => user.schedule.id } if user.schedule
      can :destroy, TimeBlock, :day => { :schedule_id => user.schedule.id } if user.schedule
    else
      can :create, @registration
    end
  end
end
