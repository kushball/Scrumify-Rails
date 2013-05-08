class User < ActiveRecord::Base
	# Database Relations
  has_one :schedule, :dependent => :destroy
  has_many :memberships, :dependent => :destroy
  has_many :groups, :through => :memberships
  has_many :comments, :dependent => :destroy
  has_many :peer_reviews, :dependent => :destroy
  has_many :timecards, :dependent => :destroy
  has_many :obligations, :dependent => :destroy
  has_many :roles, :through => :obligations
	has_many :tasks
	
	# Callbacks
	after_destroy :delete_peer_reviews

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable :registerable
devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :registerable
  # Alias for <tt>acts_as_taggable_on :tags</tt>: <tt>acts_as_taggable</tt>  
  acts_as_taggable_on :interests
  
  # mount_uploader :profile_image, ProfileImageUploader

  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, 
                  :birthday, :about, :location, :school, :occupation, :aim, :live, :skype, 
                  :gtalk, :phone, :hide_email, :hide_phone, :hide_ims, :birthday_privacy, :signup_status,
                  :interest_list, :profile_image, :personal_information_added, :discussion_section_1,
                  :discussion_section_2, :discussion_section_3, :preferred_teammates, :html, :css, :javascript, 
                  :java, :cpp, :python, :ruby_ror, :other, :sql, :preferred_teammates_store, :account_disabled
  
  # Keeps track of the signup step
  attr_accessor :current_step
                  
  validates_length_of :first_name, :within => 2..30, :too_long => "must be at most 30 characters", :too_short => "must be at least 2 characters",
                      :if => lambda { |user| user.current_step == 'information_step' }
  validates_length_of :last_name, :within => 2..30, :too_long => "must be at most 30 characters", :too_short => "must be at least 2 characters",
                      :if => lambda { |user| user.current_step == 'information_step' }
  
  # Check out app/validators/email_format_validator.rb
  #validates :email, :email_format => true

	validate	:is_user_enrolled_student?
  
  # Overwriting Devise's update_with_password
  def update_with_password(params={})
    if params[:password].blank? 
      params.delete(:password) 
      params.delete(:password_confirmation) if params[:password_confirmation].blank? 
    end 
    update_attributes(params) 
  end
  
  
  #############################
  ###  Attribute Functions  ###
  #############################
  
  # Returns user's full name
  def name
    if self.first_name.blank? && self.last_name.blank?
      false
    else
      self.first_name.capitalize + " " + self.last_name.capitalize
    end
  end
  
  # Does the user already have a schedule?
  def has_schedule?
    self.schedule != nil
  end
  
  # Returns the number of users that are in at least 1 group.
  def self.grouped_users_count
    users = User.where(:admin => false, :tutor => false)
    user_count = 0
    
    users.each do |user|
      user_count += 1 if !user.groups.empty?
    end
    
    user_count
  end
  
  # Return user's preferred_teammates that are not already in a group.
  def preferred_available_teammates
    teammates = self.preferred_teammates.split(",")
    teammates.each do |teammate|
      user = User.where(:email => teammate).first
      if user
        if !user.groups.empty?
          teammates.delete(teammate)
        end
      else
        teammates.delete(teammate)
      end
    end
    teammates
  end
  
  # Return true if user is group leader, otherwise false.
  def is_group_leader?
    group = self.groups.first
    
    if group
      if group.creator == self.id
        return true
      end
    end
    
    return false
  end
  
  # Return true if user is group deputy, otherwise false.
  def is_group_deputy?
    group = self.groups.first
    
    if group
      if group.deputy_1 == self.id or group.deputy_2 == self.id or self.is_group_leader?
        return true
      end
    end
    
    return false
  end
  
  # Returns true if user is a member of <tt>group</tt>, otherwise false.
  def exists_in?(group)
    user_in_group = false
    
    for membership in self.memberships
      user_in_group = true if group.id == membership.group_id
    end
    
    user_in_group
  end
  
  # Returns a comma-separated list of self's preferred_teammates that got grouped
  # with self.
  def preferred_teammates_in_group
    group = self.groups.first
    teammates = group.users
    teammate_emails = []
    
    if !self.preferred_teammates.blank?
      preferred_teammates = self.preferred_teammates.split(',')
      for teammate in teammates
        teammate_email = teammate.email.gsub(/\s+/, "")
        teammate_emails << teammate_email if preferred_teammates.include?(teammate_email)
      end
    end
    
    teammate_emails = teammate_emails.sort
    teammate_emails.join(',')
  end
  
  # Returns a comma-separated list of self's preferred_teammates that did NOT get grouped
  # with self.
  def preferred_teammates_not_in_group
    group = self.groups.first
    teammates = group.users
    teammate_emails = []
    non_teammate_emails = []
    
    if !self.preferred_teammates.blank?
      preferred_teammates = self.preferred_teammates.split(',')
      for teammate in teammates
        teammate_email = teammate.email.gsub(/\s+/, "")
        teammate_emails << teammate_email
      end
      for preferred_teammate in preferred_teammates
        preferred_teammate = preferred_teammate.gsub(/\s+/, "")
        non_teammate_emails << preferred_teammate if !teammate_emails.include?(preferred_teammate) and User.where(:email => preferred_teammate).count > 0
      end
    end
    
    non_teammate_emails = non_teammate_emails.sort
    non_teammate_emails.join(',')
  end
  
  
  ####################################
  ######  PeerReview Functions  ######
  ####################################
  
  # Returns an array of Peer Review objects.
  #
  # If the user has begun filling out Peer Reviews, this will return
  # an array of existing Peer Reviews. Otherwise, it will create a Peer
  # Review for the user to fill out for each member of his group.
  # 
  # Example usage:
  #     Each object will be passed into the Peer Review form.
  def create_peer_reviews_for(review_period_id)
    teammates = self.groups.first.users
    peer_reviews = PeerReview.where(:user_id => self.id, :review_period_id => review_period_id)
    
    if peer_reviews.empty?
      for teammate in teammates
        peer_reviews << PeerReview.create(:user_id => self.id, :reviewee_id => teammate.id, :review_period_id => review_period_id)
      end
    end
    
    peer_reviews.uniq
  end
  
  # Returns an array of Peer Reviews completed by user for the given 
  # Review Period.
  def completed_peer_reviews(review_period_id)
    PeerReview.where(:review_period_id => review_period_id, :user_id => self.id, :completed => true)
  end
  
  # Returns an array of Peer Reviews received by user for the given 
  # Review Period.
  def completed_peer_reviews_received(review_period_id)
    PeerReview.where(:review_period_id => review_period_id, :reviewee_id => self.id, :completed => true)
  end
  
  # Returns true if user completed all Peer Reviews for the given
  # Review Period, else false.
  def completed_all_peer_reviews?(review_period_id)
    self.peer_reviews.where(:review_period_id => review_period_id, :completed => true).count == self.groups.first.users.count
  end
  
  # Returns an array of Users that submitted all Peer Reviews for the
  # given Review Period.
  def self.submitted_peer_reviews(review_period_id)
    users = User.where(:admin => false, :tutor => false)
    responsible_users = []
    
    users.each do |user|
      if !user.groups.empty?
        responsible_users << user if user.completed_all_peer_reviews?(review_period_id)
      end
    end
    
    responsible_users
  end
  
  # Returns an array of Users that did NOT submit all Peer Reviews for the
  # given Review Period.
  def self.did_not_submit_peer_reviews(review_period_id)
    users = User.where(:admin => false, :tutor => false)
    irresponsible_users = []
    
    users.each do |user|
      if !user.groups.empty?
        irresponsible_users << user if !user.completed_all_peer_reviews?(review_period_id)
      end
    end
    
    irresponsible_users
  end
 

  ####################################
  #######  Time Card Functions  ######
  ####################################
  
  #boolean check to see if the user has created a timecard for the active (current) period.
  def has_timecard_in_current_period?
    active_period = TimecardPeriod.get_active_timecard_period
    timecard = active_period.timecards.where(:user_id => self.id)
    if timecard.blank?
       return false
    end
    return true
  end

  def get_active_timecard
    active_period = TimecardPeriod.get_active_timecard_period
    time_card = active_period.timecards.where(:user_id => self.id).first
    time_card
  end

  def submitted_active_timecard?
    time_card = self.get_active_timecard
    if time_card.completed
      true
    else
      false
    end
  end

  # This will get a timecard from the previous period
  # if the due date has not yet passed.
  def get_incomplete_timecards
    incomplete_timecards = Array.new
    timecard_periods = TimecardPeriod.get_current_and_prior_periods
    for period in timecard_periods
      timecard = period.get_user_timecard(self.id)
      incomplete_timecards << timecard if timecard and !timecard.completed
    end

    incomplete_timecards
  end

  ####################################
  ###  Database Utility Functions  ###
  ####################################
  
  # Generates a seeds file for the current users table
  def self.generate_seeds
    users = User.where(:admin => false, :tutor => false)
    seeds_content = "# This seeds file was generated on:  #{Time.now.strftime("%m/%d/%Y at %I:%M %p")}"
    
    users.each do |user|
      seeds_content += "\n\n"
      seeds_content += "#  #{user.name}\n"
      seeds_content += "user = User.create(\n"
      seeds_content += "  :email                  => '#{user.email}',\n"
      seeds_content += "  :password               => 'password',\n"
      seeds_content += "  :password_confirmation  => 'password',\n"
      seeds_content += "  :first_name             => '#{user.first_name}',\n"
      seeds_content += "  :last_name              => '#{user.last_name}',\n"
      seeds_content += "  :discussion_section_1   => #{user.discussion_section_1},\n"
      seeds_content += "  :discussion_section_2   => #{user.discussion_section_2},\n"
      seeds_content += "  :discussion_section_3   => #{user.discussion_section_3},\n"
      seeds_content += "  :preferred_teammates    => '#{user.preferred_teammates}',\n"
      seeds_content += "  :signup_status          => 'completed'\n"
      seeds_content += ")\n"
      
      if user.has_schedule?
        seeds_content += "schedule = Schedule.create(\n"
        seeds_content += "  :user_id => user.id\n"
        seeds_content += ")\n"
        
        day_count = 0
        time_block_content = "TimeBlock.create([\n"
        seeds_content += "days = Day.create([\n"
        user.schedule.days.each do |day|
          seeds_content += "  {:name => '#{day.name}', :schedule_id => schedule.id},\n"
          day.time_blocks.each do |time_block|
            time_block_content += "  {:chunk_of_time => '#{time_block.chunk_of_time}', :day_id => days[#{day_count}].id},\n"
          end
          day_count += 1
        end
        seeds_content = seeds_content[0..-3] + "\n" + "])\n"  # gets rid of last ",\n" then adds "\n"
        time_block_content = time_block_content[0..-3] + "\n" + "])\n"
        seeds_content += time_block_content
      end
    end
    
    # Creating and writing to the seeds file
    # File name example: seeds_04-09-2003_0823.rb
    # Saves seeds docs to /public/exports
    time = Time.now.strftime("%m-%d-%Y_%I%M")  # => "04-09-2003_0823"
    file_name = "seeds_#{time}.rb"
    export_path = "#{RAILS_ROOT}/public/exports/" + file_name
    File.open(export_path, "w") { |f| f << seeds_content }
  end
  
  # 1.  Cleans up old Roster and EnrolledStudents
  # 2.  Creates new Roster
  # 3.  Reads roster.csv and creates new EnrolledStudents
  # 
  # Note: Roster has_many EnrolledStudents
  require 'csv'
  def self.import_roster
    roster_url = "#{RAILS_ROOT}/public/imports/roster.csv"
    
    # Clean up old Roster and EnrolledStudents and create new roster
    for roster in Roster.all
      roster.destroy
    end
    roster = Roster.create(:name => "Fall 2012 Roster")
    
    # Create new EnrolledStudents from roster.csv
    CSV.foreach(roster_url) do |row|
      email = row[7]
      if email != nil && email["@"] != nil
        temp = row[2].split(",")
        name = temp.last + " " + temp.first
        EnrolledStudent.create(:roster_id => roster.id, :email => email, :name => name)
      end
    end
  end

	######################################################
	# Check if email passed is valid based on the roster #
	######################################################

	def is_user_enrolled_student?
		errors.add(:email, "is not contained on the roster. Please talk to Gary about this issue.") unless
				EnrolledStudent.where(:email => self.email).exists?
	end

	######################################################
  
  
  ######################################
  ###  Grouping Algorithm Functions  ###
  ######################################
  
  # Returns the user that could be a compatible teammate with the highest
  # number of ungrouped users
  def self.most_compatible_ungrouped_user
    ungrouped_users = []
    users = User.where(:admin => false, :tutor => false)
    
    users.each do |user|
      ungrouped_users << user if user.groups.empty?
    end
    
    # sorts ungrouped_users by leader_score, highest -> lowest
    ungrouped_users.sort! { |b,a| a.leader_score <=> b.leader_score }
    
    ungrouped_users.first
  end
  
  # Each ungrouped user is given a leader score to determine how strong a group could
  # be built around him
  # 
  # Leader score = (SUM OF (2 * each compatible meeting time with each ungrouped user)) 
  #               + (all compatible time blocks with all ungrouped users)
  def leader_score
    score = 0
    ungrouped_users = []
    users = User.where(:admin => false, :tutor => false)
    
    users.each do |user|
      ungrouped_users << user if user.groups.empty?
    end
    
    ungrouped_users.each do |ungrouped_user|
      if self.has_compatible_meeting_time_with(ungrouped_user)
        score += (self.number_of_compatible_meeting_times_with(ungrouped_user) * 2) + self.number_of_compatible_time_blocks_with(ungrouped_user.schedule)
      end
    end
    
    score
  end
  
  # Returns the number of ungrouped users that the current user is compatible with
  # 
  # Compatibility:
  #   1. both users have 1+ meeting times in common (ie: discussion_section_1)
  #   2. both users have 1+ time blocks in common
  def potential_teammate_count
    potential_teammate_count = 0
    ungrouped_users = []
    users = User.where(:admin => false, :tutor => false)
    
    users.each do |user|
      ungrouped_users << user if user.groups.empty?
    end
    
    ungrouped_users.each do |ungrouped_user|
      if self.has_compatible_meeting_time_with(ungrouped_user) and self.number_of_compatible_time_blocks_with(ungrouped_user.schedule) > 0
        potential_teammate_count += 1
      end
    end
    
    potential_teammate_count
  end
  
  # Returns true if self and <tt>user</tt> have at least one monday availability 
  # in common
  def has_compatible_meeting_time_with(user)
    if self.number_of_compatible_meeting_times_with(user) > 0
      return true
    end
    
    return false
  end
  
  # Returns the number of compatible meeting times between self and <tt>user</tt>
  def number_of_compatible_meeting_times_with(user)
    compatibilities = 0
    
    if (self.discussion_section_1 != 0) and (user.discussion_section_1 != 0)
      compatibilities += 1
    elsif (self.discussion_section_2 != 0) and (user.discussion_section_2 != 0)
      compatibilities += 1
    elsif (self.discussion_section_3 != 0) and (user.discussion_section_3 != 0)
      compatibilities += 1
    end
    
    compatibilities
  end
  
  # Returns the number of compatible time blocks between user's schedule and 
  # <tt>schedule</tt>
  def number_of_compatible_time_blocks_with(schedule)
    compatibilities = 0
    
    # does user have a schedule and does <tt>schedule</tt> exist
    if self.schedule != nil and schedule != nil
      self_days = self.schedule.days
      schedule_days = schedule.days
    
      # are there days in each schedule
      if self_days != nil and schedule_days != nil
        self_days.each do |self_day|
          schedule_days.each do |schedule_day|
            if self_day.name == schedule_day.name
              # are there time blocks in each day
              if self_day.time_blocks != nil and schedule_day.time_blocks != nil
                self_day.time_blocks.each do |self_block|
                  schedule_day.time_blocks.each do |schedule_block|
                    if self_block.chunk_of_time == schedule_block.chunk_of_time
                      compatibilities += 1
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    
    compatibilities
  end
  
  # Returns a <tt>score</tt> based on how many preferred_teammates self has in common
  # with <tt>users</tt>.
  # 
  # Process:
  #   1.  Builds a weighting for preferred_teammates; for every time a teammate
  #       is listed by a user in <tt>users</tt> that teammate's weight increases by 1.
  #   2.  Compares self's preferred_teamamtes to the weighted list of preferred_teammates;
  #       For each teamamte existing in this intersection, the weight of that teammate
  #       is added to self's <tt>score</tt>.
  #   3.  Returns <tt>score</tt>.
  def friendship_score(emails)
    users = []
    for email in emails
      user = User.where(:email => email).first
      users << user if user and user.groups.empty?
    end
    preferred_teammates_pool = []
    if self.preferred_teammates
      preferred_teammates = self.preferred_teammates.split(',')
    else
      preferred_teammates = []
    end
    score = 0
    
    # Building a weighted pool of preferred_teammates
    for user in users
      if user.preferred_teammates
        temp_preferred_teammates = user.preferred_teammates.split(',')
      else
        temp_preferred_teammates = []
      end
      for teammate in temp_preferred_teammates
        if preferred_teammates_pool.any? { |hash| hash[:teammate] == teammate }
          preferred_teammates_pool.select { |hash| hash[:teammate] == teammate }.first[:score] += 1
        else
          preferred_teammates_pool << { :teammate => teammate, :score => 1 }
        end
      end
    end
    
    # Accumulating friendship_score for self based on intersection between
    # <tt>preferred_teammates_pool</tt> and self's </tt>preferred_teammates</tt>
    for teammate in preferred_teammates
      if preferred_teammates_pool.any? { |hash| hash[:teammate] == teammate }
        score += preferred_teammates_pool.select { |hash| hash[:teammate] == teammate }.first[:score]
      end
    end
    
    score
  end
  
  # Returns an array of emails of all ungrouped users, sorted by friendship_score, 
  # highest -> lowest.
  def self.group_leader_candidates
    # Build an array of users with preferred_teammates
    users = User.where(:admin => false, :tutor => false)
    users_with_preferred_teammates = []
    for user in users
      users_with_preferred_teammates << user if !user.preferred_teammates.blank?
    end
    
    # Sort <tt>users_with_preferred_teammates</tt> by friendship_score, highest -> lowest
    users_with_preferred_teammates.sort! { |b,a| a.friendship_score(a.preferred_teammates.split(',')) <=> b.friendship_score(b.preferred_teammates.split(',')) }
    
    # Build an array of emails in the same order as <tt>users_with_preferred_teammates</tt>
    email_list = []
    for user in users_with_preferred_teammates
      email_list << user.email
    end
    
    email_list
  end
  
  
  ###########################################
  ###  Dynamic Record Creation Functions  ###
  ###########################################
  
  # Given a schedule, create days with dates
  # Where a chunk_of_time is "morning" | "afternoon" | "evening"
  def add_date_chunks_to_schedule(time_blocks, schedule)
    time_blocks.each do |block|
      date = block.split("_")[0]
      chunk_of_time = block.split("_")[1]
      
      if Day.exists?(date, schedule.id)
        day = Day.where(:date => date, :schedule_id => schedule.id).first
      else
        day = Day.new(:date => date, :schedule_id => schedule.id)
        day.save
      end
      
      if !TimeBlock.dexists?(chunk_of_time, day.id)
        time_block = TimeBlock.new(:chunk_of_time => chunk_of_time, :day_id => day.id)
        time_block.save
      end
    end
  end
  
  # Given a schedule, create days with names
  # Where a chunk_of_time is "morning" | "afternoon" | "evening"
  def add_day_chunks_to_schedule(time_blocks, schedule, user)
    time_blocks.each do |block|
      day_of_week = block.split("_")[0]
      chunk_of_time = block.split("_")[1]
      
      # Delete all days in case user is updating schedule
      if user.schedule && user.schedule.days
        user.schedule.days.each do |day|
          day.destroy
        end
      end
      
      if Day.exists?(day_of_week, schedule.id)
        day = Day.where(:name => day_of_week, :schedule_id => schedule.id).first
      else
        day = Day.new(:name => day_of_week, :schedule_id => schedule.id)
        day.save
      end
      
      if !TimeBlock.dexists?(chunk_of_time, day.id)
        time_block = TimeBlock.new(:chunk_of_time => chunk_of_time, :day_id => day.id)
        time_block.save
      end
    end
  end
  
  # Given a schedule, create days and block of time associated with this schedule
  # Where a block consists of a :start_time and :end_time
  def add_blocks_to_schedule(time_blocks, schedule, recurring)
    time_blocks.each do |block|
      day_of_week = block.split("_")[0]
      time = block.split("_")[1]
      start_time = Time.utc("2011", nil, nil, time.split(" - ")[0])
      end_time = Time.utc("2011", nil, nil, time.split(" - ")[1])
      
      if Day.exists?(day_of_week, schedule.id)
        day = Day.where(:name => day_of_week, :schedule_id => schedule.id).first
      else
        day = Day.new(:name => day_of_week, :schedule_id => schedule.id)
        day.save
      end
      
      if !TimeBlock.exists?(start_time, end_time, day.id, recurring)
        time_block = TimeBlock.new(:start_time => start_time, :end_time => end_time, :day_id => day.id, :recurring => recurring)
        time_block.save
      end
    end
  end
  
  
  ###############################################
  ###  Temporary Database-Specific Functions  ###
  ###############################################
  
  # Returns array of unregistered users from the full class roster
  # Look at get_class_roster for more information
  def self.get_unregistered_users
    registered_emails = Array.new
    full_roster = get_class_roster
    users = User.all
    for u in users
      registered_emails << u.email.strip.downcase
    end
    
    unregistered_emails = full_roster - registered_emails
    return unregistered_emails
  end
  
  # Input a string of newlined, roster from excel
  # Call this function and it returns the roster with just emails
  def self.get_class_roster
    roster = Roster.last
    enrolled_students_emails = []
    for student in roster.enrolled_students
      enrolled_students_emails << student.email
    end
    
    enrolled_students_emails
  end


  ###############################################
  ###  						Callbacks									  ###
  ###############################################

	private 
		# After a user is destroyed, we want to delete all reviews done of this
		# user so that the system's data stays consistent. 
		def delete_peer_reviews
			reviews = PeerReview.where(:reviewee_id => self.id)
			for review in reviews
				review.destroy
			end
		end 
end
