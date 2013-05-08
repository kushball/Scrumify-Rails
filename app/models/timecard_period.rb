class TimecardPeriod < ActiveRecord::Base
  has_many :timecards, :dependent => :destroy
  after_create { Timecard.make_all_for_period(self.id) }
  
  attr_accessible :name, :actual_starts_on, :actual_ends_on, :estimate_starts_on, :estimate_ends_on, :due_on

  def actual_available?
    self.actual_starts_on <= Date.today
  end

  def timecard_made(user_id)
    for timecard in self.timecards do
      if timecard.user_id == user_id
        return timecard
      end
    end
    return nil
  end

  def late?
    Time.now > self.due_on
  end

  # For a given period get the timecards.
  def get_timecards(group)
    self.timecards.where(:group_id => group.id)
  end

  def get_user_timecard(user_id)
    self.timecards.where(:user_id => user_id).first
  end
  
  def self.get_active_timecard_period 
    TimecardPeriod.where("actual_starts_on <= :today AND actual_ends_on >= :today", :today => Date.today).first
  end

  # Get all periods that exist before Today
  def self.get_current_and_prior_periods
    TimecardPeriod.where("actual_starts_on <= :today", :today => Date.today)
  end
  
  def self.find_latest(periods)
    latest = periods.first
    periods.each do |peri|
      if peri.actual_ends_on > latest.actual_ends_on
        latest = peri
      end
    end
    return latest
  end      
    
  def self.make_periods(start_param, weeks)
    start_date = start_param
    count = 1
    while count <= weeks
      period = TimecardPeriod.new(:actual_starts_on => start_date, :actual_ends_on => start_date.advance(:days => 6), 
                                  :estimate_starts_on => start_date.advance(:days => 7), :estimate_ends_on => start_date.advance(:days => 13), 
                                  :name => "Week " + count.to_s + " of " + weeks.to_s, 
				  :due_on => start_date.advance(:days => 10).to_datetime().in_time_zone(Time.zone).change(:hour => 12))
      period.save
      start_date = start_date.advance(:days => 7)
      count += 1
    end
  end
  
  def available_days_for_actuals
    available_days = []
    week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    upto_date = self.actual_ends_on
    if Date.today < upto_date
      upto_date = Date.today
    end
    
    self.actual_starts_on.upto(upto_date) do |day|
      available_days << [ week[day.wday] + "   " + day.month.to_s + "/" + day.day.to_s + "/" + day.year.to_s , week[day.wday]]
    end
    available_days
  end
  
  def available_days_for_estimates
    available_days = []
    week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    self.estimate_starts_on.upto(self.estimate_ends_on) do |day|
      available_days << [ week[day.wday] + "   " + day.month.to_s + "/" + day.day.to_s + "/" + day.year.to_s , week[day.wday]]
    end
    available_days
  end
end
