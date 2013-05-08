class TimeLog < ActiveRecord::Base
  belongs_to :timecard
  belongs_to :charge_number

  attr_accessible :timecard_id, :day, :hours, :actual, :charge_number_id
  validates :charge_number_id, :presence => true
  validates :day, :presence => true
  validates :hours, :presence => true, :numericality => true


  # Returns the total number of hours logged for the given charge_number
  # and timecard
  #
  # timecard_id:integer
  # charge_number_id:integer
  def self.total_hours_by_charge_number(timecard_id, charge_number_id)
    time_log  = Timelog.where(:timecard_id => timecard_id, :charge_number.name => charge_number_id) 
    hours = time_log.actual
    return hours
  end
 
  # Returns the total number of hours logged for the given day and timecard
  #
  # timecard_id:integer
  # day:string
  def self.total_hours_by_day(timecard_id, day)
    time_log = TimeLog.where(:timecard_id => timecard_id, :day => day) 
    total_hours = time_log.actual
    return total_hours
  end 
end
