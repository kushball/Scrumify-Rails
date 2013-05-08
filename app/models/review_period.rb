class ReviewPeriod < ActiveRecord::Base
  has_many :peer_reviews, :dependent => :destroy
  
  attr_accessible :name, :starts_on, :ends_on
  
  validates :name,           :presence => true
  validates :starts_on,      :presence => true
  validates :ends_on,        :presence => true

  def available?
    self.starts_on <= Date.today
  end
  
  def self.current
    ReviewPeriod.where("starts_on <= :today AND ends_on >= :today", :today => Date.today).first
  end

  # Did the user complete peer reviews for a given period?
  def self.completed_peer_review?(review_period, user)
    ReviewPeriod.get_users_completed_reviews(review_period, user).count == user.groups.first.users.count
  end

  # Has the peer reviews form been started and not completed?
  def self.peer_review_in_progress?(review_period, user)
    count = ReviewPeriod.get_users_completed_reviews(review_period, user).count
    count > 0 && count < user.groups.first.users.count
  end

  # Has the user completed any of them?
  def self.peer_review_not_started?(review_period, user)
    ReviewPeriod.get_users_completed_reviews(review_period, user).count == 0
  end

  # Return string representing the status of the peer reviews for a particular user and period.
  def self.peer_review_status(review_period, user)
    if ReviewPeriod.completed_peer_review?(review_period, user)
      return "Completed"
    elsif ReviewPeriod.peer_review_in_progress?(review_period, user)
      return "In Progress"
    else
      return "Not Started"
    end
  end

  # Get the latest updated time on a peer review.
  def self.submission_time(review_period, user)
    reviews = ReviewPeriod.get_users_completed_reviews(review_period, user)
    if !reviews.blank?
      review = reviews.order("updated_at DESC").first
      review.updated_at
    end
  end

  # Get the completed peer reviews for a particular period and a particular user.
  def self.get_completed_reviews(review_period, user)
    reviews = PeerReview.where(:review_period_id => review_period.id, :reviewee_id => user.id, :completed => true)
    reviews
  end

  def self.get_users_completed_reviews(review_period, user)
    reviews = PeerReview.where(:review_period_id => review_period.id, :user_id => user.id, :completed => true)
    reviews
  end

  def self.get_users_completed_count(review_period, user)
    reviews = get_users_completed_reviews(review_period, user)
    if reviews
      return reviews.count
    end
    return 0
  end

  # Is a student late in submitting their peer reviews?
  def self.late?(review_period, user)
    case ReviewPeriod.peer_review_status(review_period, user)
      when "Completed"
        submission_time = ReviewPeriod.submission_time(review_period, user)
        return submission_time > review_period.ends_on.end_of_day
      else
        return Time.now > review_period.ends_on.end_of_day
    end
  end

  # If given a review_period object and a user object,
  # calculate the average rating from the peer reviews
  # their peers have given them for the current period.
  # Exclude the rating they gave themselves.
  def self.calculate_average(review_period, user)
    reviews = review_period.peer_reviews.where("reviewee_id = :user_id AND user_id != :user_id", :user_id => user.id)
    avg = reviews.average("rating")
    avg.to_f.round(1)
  end

  # Get the user's rating of themselves for a particular period and user.
  def self.get_self_score(review_period, user)
    review = review_period.peer_reviews.where(:reviewee_id => user.id, :user_id => user.id, :completed => true).first
    if !review.blank?
      return review.rating
    end
    return 0
  end

  # Get the difference between the user's own rating and the average rating
  # their group gives them.
  def self.calculate_own_difference(review_period, user)
    avg_score = self.calculate_average(review_period, user)
    self_score = self.get_self_score(review_period, user)
    difference = self_score - avg_score
    difference.to_f.round(1)
  end

  # Get the average of all the ratings the user gave out not including their own
  def self.calculate_ratings_awarded_average(review_period, user)
    reviews = review_period.peer_reviews.where("reviewee_id != :user_id AND user_id = :user_id", :user_id => user.id)
    avg = reviews.average("rating")
    avg.to_f.round(1)
  end

  # Calculate a team's average rating.
  # Get the average rating for each user and add it together.
  # Divide by the number of users in the group.
  def self.calculate_team_average_rating(review_period, group)
    average_sum = 0
    for user in group.users do
      average_sum = average_sum + ReviewPeriod.calculate_average(review_period, user)
    end
    avg = average_sum/group.users.count
    avg.to_f.round(1)
  end

  # Calculate the difference between awarded rating and the team average rating
  def self.calculate_awarded_difference(review_period, user)
    awarded_rating = ReviewPeriod.calculate_ratings_awarded_average(review_period, user)
    group_average_rating = ReviewPeriod.calculate_team_average_rating(review_period, user.groups.first)
    difference = awarded_rating - group_average_rating
    difference.to_f.round(1)
  end

  # Return a array of an array of hashes with each hash containing the
  # users with the highest score and lowest scores for a period and group.
  #
  # In the return object
  # h = ReviewPeriod.highest_lowest_averages(ReviewPeriod.current, Group.first)
  # h[0] is an array of hashes with the highest rated members
  # h[1] is an array of hashes with the lowest rated members
  #
  # Each hash is structured {"person" => userobj, "average" => float_number}
  # so h[0].first["person"] will give you a User object so you can then call .name etc.
  #    h[0].first["average"] will give you a float average score that they recieved.
  #
  # For each review period
  #   For each group
  #     group_highest for review period
  #     group_lowest  for review period
  #
  def self.highest_lowest_averages(review_period, group)
    finalarr = Array.new
    hightarr = Array.new
    lowtarr = Array.new
    highest_val = 0
    lowest_val = 0
    highest_hash = Hash.new("person" => "", "average" => "")
    lowest_hash = Hash.new("person" => "", "average" => "")

    if !group.users.blank?
      for user in group.users do
        avg = self.calculate_average(review_period, user)

        if highest_val == 0 && lowest_val == 0
          highest_hash["person"] = user
          highest_hash["average"] = avg
          hightarr.push(highest_hash)
          lowest_hash["person"] = user
          lowest_hash["average"] = avg
          lowtarr.push(lowest_hash)
          lowest_val = avg
          highest_val = avg
        else
          if avg >= highest_val
            if avg > highest_val
              hightarr.clear
            end
            highest_val = avg
            high = Hash.new("person" => "", "average" => "")
            high["person"] = user
            high["average"] = avg
            hightarr.push(high)
          elsif avg <= lowest_val
            if avg < lowest_val
              lowtarr.clear
            end
            lowest_val = avg
            low = Hash.new("person" => "", "average" => "")
            low["person"] = user
            low["average"] = avg
            lowtarr.push(low)
          else
          end
        end
      end
      finalarr.push(hightarr)
      finalarr.push(lowtarr)
    else
      nil
    end
    finalarr
  end

	# Return the number of members in the group that did not
	# complete their peer reviews.
	def self.get_group_incomplete_count(review_period, user)
		count = 0
		
		for member in user.groups.first.users
			count = count + 1 if !completed_peer_review?(review_period, member)
		end
		
		return count
	end

	# 10 points per person if complete
	# 0 points if same score is entered for teammate rated
	# -1 point per person on the team for each person on the team that 
	#          didn't complete a peer review.
	# -1 point on a particular person's review for each teammate not reviewed.
	def self.calculate_grade(review_period, user)
		completed_count = get_users_completed_count(review_period, user)
		
		score = 10
		score = 0 if (calculate_ratings_awarded_average(review_period, user) == 10)
		score = score - get_group_incomplete_count(review_period, user)
		score = score - (user.groups.first.users.count - completed_count)
		score = 0 if completed_count == 0
			
		score = 0 if score < 0
		return score
	end
end
