class UserStoriesController < ApplicationController
  load_and_authorize_resource
  
  def index
    @user_stories = UserStory.all
  end

  def show
    @user_story = UserStory.find(params[:id])
  end

  def new
    @user_story = UserStory.new
  end

  def create
    @user_story = UserStory.new(params[:user_story])
    if @user_story.save
      redirect_to @user_story, :notice => "Successfully created user story."
    else
      render :action => 'new'
    end
  end

  def edit
    @user_story = UserStory.find(params[:id])
  end

  def update
    @user_story = UserStory.find(params[:id])
    if @user_story.update_attributes(params[:user_story])
      redirect_to @user_story, :notice  => "Successfully updated user story."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user_story = UserStory.find(params[:id])
    @user_story.destroy
    redirect_to user_stories_url, :notice => "Successfully destroyed user story."
  end
end
