class StoriesController < ApplicationController
  def index
		@group = Group.find(params[:group_id])
		@group_members = @group.users
    @stories = @group.stories
  end

  def show
		@group = Group.find(params[:group_id])
    @story = Story.find(params[:id])
		respond_to do |format|
			format.html
			format.js
		end
  end

  def new
		@group = Group.find(params[:group_id])
    @story = @group.stories.build
  end

  def create
		@group = Group.find(params[:group_id])
    @story = @group.stories.build(params[:story])
    if @story.save
			respond_to do |format|
      	format.html {redirect_to group_stories_url, :notice => "Successfully created story."}
  			format.js
  		end
    else
      render :action => 'new'
    end
  end

  def edit
		@group = Group.find(params[:group_id])
    @story = Story.find(params[:id])
  end

  def update
		@group = Group.find(params[:group_id])
    @story = Story.find(params[:id])
    if @story.update_attributes(params[:story])
      redirect_to [@group, @story], :notice  => "Successfully updated story."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to group_stories_url, :notice => "Successfully destroyed story."
  end
end
