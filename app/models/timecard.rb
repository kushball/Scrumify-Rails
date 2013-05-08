class Timecard < ActiveRecord::Base
  belongs_to :user
  belongs_to :group 
  belongs_to :timecard_period
  has_many :time_logs, :dependent => :destroy
  
  attr_accessible :time_logs_attributes, :completed, :timecard_period_id, :todo, :done, :risks, :issues, :user_id, :group_id
  accepts_nested_attributes_for :time_logs, :reject_if => lambda { |a| a[:hours].blank? }, :allow_destroy => true


 @colors = ['#4572A7', '#AA4643', '#89A54E', '#80699B', '#3D96AE', '#DB843D', '#92A8CD','#A47D7C', '#B5CA92', '#B8860B']  ## 10 colors
####################################
##### Methods for grading ##########
####################################
 # Was a timecard submitted late?
 def late?
   if self.completed
     return self.updated_at > self.timecard_period.due_on
   else
     return Time.now > self.timecard_period.due_on
   end
 end

	# 1 points for submission
	# 2 points for actual hours
	# 2 points for estimate hours
	def calculate_grade
		score = 5
		score = score - 1 if late?
		score = score - 2 if total_actual_hours == 0
		score = score - 2 if total_estimate_hours == 0
		
		score = 0 if score < 0
		return score
	end
 

####################################
####### Calculation methods ########
####################################
 # Returns the total number of estimated hours for this ETC.
  def total_estimate_hours
    estimate_hours = 0
    for time_log in self.time_logs.all
      if time_log.actual == false
        estimate_hours = time_log.hours + estimate_hours
      end
    end
    estimate_hours
  end 
   
  # Returns the total number of actual hours for this ETC.
  def total_actual_hours
    actual_hours = 0
    for time_log in self.time_logs.all
      if time_log.actual == true
        actual_hours = time_log.hours + actual_hours
      end 
    end
    return actual_hours
  end

  # Returns the number of actual hours for the charge numbers, for this ETC.
  def actual_hours_by_charge_number(charge_number)
    actual_hours = 0
    time_logs = self.time_logs.all
    time_logs.each do |time_log|
      if time_log.actual == true && charge_number == time_log.charge_number
        actual_hours = time_log.hours + actual_hours
      end
    end
    actual_hours
  end

  # Returns the number of estimated hours for the charge number, for this ETC.
  def estimate_hours_by_charge_number(charge_number)
    estimate_hours = 0
    time_logs = self.time_logs.all
    time_logs.each do |time_log|
      if time_log.actual == false && charge_number == time_log.charge_number
        estimate_hours = time_log.hours + estimate_hours
      end
    end
    estimate_hours
  end 

  ### Combination of above 2 methods ###
  # Returns the total number of hours for the given charge number for this ETC (actual = true for actuals, false for estimates)
  def hours_by_charge_number(num, actual)
    hours = 0
    self.time_logs.each do |log|
      if (num.id == log.charge_number.id && actual==log.actual)
        hours += log.hours
      end
    end
    hours
  end

########################################
#########  Code For User Graph #########
########################################
## Pie chart of charge Numbers

  def self.get_user_pie_chart_by_charge_number(user, group_name, charge_numbers)
    data = ""
    charge_numbers.each do |charge_num|
      actuals = 0
      user.timecards.each do |timecard|
        timecard.time_logs.each do |log|
          if charge_num == log.charge_number
            if log.actual
              actuals += log.hours
            end
          end
        end
      end
      data = data + "['" + group_name + charge_num.name + "', " + actuals.to_s + "], "
    end
    return data[0..-3]
  end




  def self.get_user_pie_chart_act_or_est(user, group_name, charge_numbers, act_or_est)
    data = ""
    count = 0
    charge_numbers.each do |charge_num|
      hours = 0
      user.timecards.each do |timecard|
        timecard.time_logs.each do |log|
          if charge_num == log.charge_number
            if log.actual==act_or_est
              hours += log.hours
            end
          end
        end
      end
      data = data + "{name: '" + group_name + charge_num.name + "', y: " + hours.to_s + ", color: '" + @colors[count % @colors.length] + "'},"
    count=count+1
    end
    return data[0..-2]
  end



## Line graph of charge numbers
  def self.get_charge_number_series_for_user(user, group_name, charge_numbers)
    series = ""
    colors = ['#4572A7', '#AA4643', '#89A54E', '#80699B', '#3D96AE', '#DB843D', '#92A8CD','#A47D7C', '#B5CA92', '#B8860B']  ## 10 colors
    color = 0
    charge_numbers.each do |num|
      data = 
      act_hours = ""
      est_hours = ""
      user.timecards.each do |card|
          if card.timecard_period.actual_starts_on < Date.today
	    period = card.timecard_period
    	    act_end = period.actual_ends_on.to_datetime.to_i * 1000
     	    est_end = period.estimate_ends_on.to_datetime.to_i * 1000
    	    act_end_str = act_end.to_s
    	    est_end_str = est_end.to_s
            act_hours = act_hours + "{x:" + act_end_str + ", y:" + card.actual_hours_by_charge_number(num).to_s + ", name: '" + card.timecard_period.name + "'}, "
          est_hours = est_hours + "{x:" + est_end_str + ", y:" + card.estimate_hours_by_charge_number(num).to_s + ", name: '" + card.timecard_period.name + "'}, "
          end
      end
      series = series + "{ name: '" + group_name + num.name + "', data: [" + act_hours[0..-3]  + "], color: '" + colors[color] + "', stack: 0}, " + "{ name: '" + group_name + num.name + " (estimate)', dashStyle: 'Dash', data: ["+ est_hours[0..-3] + "], color: '" + colors[color] + "', stack: 1}, "
    color= (color+1)%colors.length
    end
    return series[0..-3]
  end
########################################



#####################################################
####  Code for full group graphing functionality ####
#####################################################
##  Generate strings for: (group graph)
##  - Dynamic line graphing by list of charge number (using line stack) 
##  - Dynamic donut graph by charge number (middle circle = each group member
##      totals, outer circle = brakedown by charge number,) will adjust with user
##      graphing selections.
#####
#  Series-s will be organized in sets, each stack value is one user (separat 
# stacks for estimates and actuals), top series(s) have full 0 data (rest on 
# top of the other data).  
# Default Options for graph:
#   plotOptions: { 
#       series: {
#           enableMouseTracking: false,
#           lineWidth: 0,
#           marker: { enabled: false },
#           showInLegend: false
#       },
#       line: {
#           stacking: 'normal'
#       }
#####
# Specifics:  ###visible lines###
# {  name: username,
#    color: #color 
#    enableMouseTracking: true,  
#    showInLegend: true,
#    lineWidth: 2  
#    stack: ##, 
#    marker: { enabled: true },
#    data: [[#Date#,0],[#Date#,0]....]   #Date# = each date in timecard periods.
#    ###  IF ESTIMATES:  dashStyle: 'shortDash'
#####
# Specifics:  ###charge number lines (invisible)###
# {  name: charge_number,
#    stack: ##,  ##Same as above
#    data: [[#Date#,num], [#Date#,num]...]  #num= total for that charge number per week
#####




#################################
  #
  #
  # CHANGE TO group.timecards.all then use a has and append to the value.
  #

  def self.get_series(group)
    series = ""
    colors = ['#4572A7', '#AA4643', '#89A54E', '#80699B', '#3D96AE', '#DB843D', '#92A8CD','#A47D7C', '#B5CA92', '#B8860B']  ## 10 colors
    color = 0
    stack = 0
    charge_num_series = Hash.new

    ##  Start All group members Block
    group.users.each do |person|
      # formatting code for the visible actual line.
      actual = "{ name: '" + person.name + "', color: '" + colors[color] + "', showInLegend: true, lineWidth: 2, stack: " + stack.to_s + ", marker: {enabled: true}, data: [" 
      stack += 1
      # formatting code for the visible estimate line.
      estimate = "{ name: '" + person.name + "(estimate)', visible: false, color: '" + colors[color] + "', showInLegend: true, lineWidth: 2, stack: " + stack.to_s + ", dashStyle: 'shortDash', marker: {enabled: true}, data: ["  
      stack += 1

      ### Nullcheck timecards array. (This check not needed when timecards are auto-generated)
      if (person.timecards.empty?)
        nulls = ""
        group.charge_numbers.each do |num|
          nulls += "{name: '" + num.id.to_s + "', stack: " + (stack-2).to_s + ", enableMouseTracking: false, data: []},{name: '" + num.id.to_s + "', stack: " + (stack-1).to_s + ", enableMouseTracking: false, data: []},"
        end
        series += actual + "]}," + estimate + "]}," + nulls
      else
      ## Start Formatting for invisible lines (broken up by charge number)
      group.charge_numbers.each do |num|
        charge_num_series[num.id.to_s + "t"] = "{name: '" + num.id.to_s + "', stack: " + (stack-2).to_s + ", enableMouseTracking: false, data: ["
        charge_num_series[num.id.to_s + "f"] = "{name: '" + num.id.to_s + "', stack: " + (stack-1).to_s + ", enableMouseTracking: false, data: ["
      end
      ## End invisible line formatting

        ## Start Timecards Per person Block
        person.timecards.each do |card|
          if card.timecard_period.actual_starts_on < Date.today
            act_end = card.timecard_period.actual_ends_on.to_datetime.to_i * 1000
            est_end = card.timecard_period.estimate_ends_on.to_datetime.to_i * 1000
            actual += "{x:" + act_end.to_s + ", y:0, name:'" + card.timecard_period.name + "'},"
            estimate += "{x:" + est_end.to_s + ", y:0, name:'" + card.timecard_period.name + "'},"
          ## Start Charge Numbers Block
            group.charge_numbers.each do |num|  
              charge_num_series[num.id.to_s + "t"] += "[" + act_end.to_s + "," + card.hours_by_charge_number(num, true).to_s + "],"
              charge_num_series[num.id.to_s + "f"] += "[" + est_end.to_s + "," + card.hours_by_charge_number(num, false).to_s + "],"
            end
          ## End charge numbers block
          end
        end
        ## End Timecards per person Block
        series += actual[0..-2] + "]}," + estimate[0..-2] + "]},"
        # Start Chargenum data string
        charge_num_series.each do |k,v|
          series += v[0..-2] + "]},"
        end
        ## End Chargenum data string
      end
      ##  End empty timecard array check
      color = (color+1)%colors.length
    end
    ## End All Group Members block
    return series
  end


  def self.get_donut_chart(group)
    series = ""
    colors = ['#4572A7', '#AA4643', '#89A54E', '#80699B', '#3D96AE', '#DB843D', '#92A8CD','#A47D7C', '#B5CA92', '#B8860B']  ## 10 colors
    color = 0
    chnums = Hash.new
    group.users.each do |person|
      ### Hash intialization
      group.charge_numbers.each do |num|
        chnums[person.id.to_s + "." + num.id.to_s] = 0
      end
      person.timecards.each do |card|
        group.charge_numbers.each do |num|
          chnums[person.id.to_s + "." + num.id.to_s] += card.hours_by_charge_number(num, true)
        end
      end
      group.charge_numbers.each do |num|
        series += "{name: '" + person.name + ": " + group.name + num.name + "', y: " + chnums[person.id.to_s + "." + num.id.to_s].to_s + ", color: '" + colors[color%10] + "'},"
      end
      color = (color+1)%colors.length
    end
    return series[0..-2]
  end

  def self.get_pie_chart(group)
    data = ""
    colors = ['#4572A7', '#AA4643', '#89A54E', '#80699B', '#3D96AE', '#DB843D', '#92A8CD','#A47D7C', '#B5CA92', '#B8860B']  ## 10 colors
    color = 0
    group.users.each do |person|
      hours = 0
      person.timecards.each do |timecard|
        hours += timecard.total_actual_hours
      end
      data = data + "{name: '" + person.name + "', y: " + hours.to_s + ", color: '" + colors[color] + "'}, "
      color =(color+1)%colors.length
    end
    return data[0..-3]
  end

  def self.make_all_for_period(timecard_period_id)
    users = User.where(:admin => false, :tutor => false)
    for user in users
      if user.groups.first
        Timecard.create(:user_id => user.id, :timecard_period_id => timecard_period_id, :group_id => user.groups.first.id)
      end
    end
  end

end
