class PeerReviewsController < ApplicationController
  load_and_authorize_resource
  
  def index
    @user_id = params[:user_id] ||= current_user.id
    @user = User.find(@user_id)
    @review_periods = ReviewPeriod.where("ends_on <= :today OR starts_on <= :today AND ends_on >= :today", :today => Date.today).order("created_at desc")
  end

  def show
    @peer_review = PeerReview.find(params[:id])
  end

  def new
    @user = current_user
    @review_period = ReviewPeriod.find(params[:review_period_id])
    @peer_reviews = @user.create_peer_reviews_for(@review_period.id)
  end

  def create
    @peer_review = PeerReview.new(params[:peer_review])
    
    if @peer_review.save
      flash[:notice] = "Successfully created peer review for #{User.find(@peer_review.reviewee_id).name}!"
    else
      flash[:error] = "Must select a rating and write a review for #{User.find(@peer_review.reviewee_id).name}."
    end
    
    respond_to do |format|
      format.html { redirect_to new_peer_review_path(:review_period_id => @peer_review.review_period_id) }
      format.js
    end
  end

  def edit
    @peer_review = PeerReview.find(params[:id])
  end

  def update
    @peer_review = PeerReview.find(params[:id])
    
    if @peer_review.update_attributes(params[:peer_review])
    else
      flash[:error] = "Must select a rating and write a review for #{User.find(@peer_review.reviewee_id).name}."
    end
    
    respond_to do |format|
      format.html { redirect_to new_peer_review_path(:review_period_id => @peer_review.review_period_id) }
      format.js
    end
  end

  def destroy
    @peer_review = PeerReview.find(params[:id])
    @peer_review.destroy
    redirect_to peer_reviews_url, :notice => "Successfully destroyed peer review."
  end
end
