class RostersController < ApplicationController
  load_and_authorize_resource

  def index
    @rosters = Roster.all
  end

  def show
    @roster = Roster.find(params[:id])
  end

  def new
    @roster = Roster.new
  end

  def create
    @roster = Roster.new(params[:roster])
    if @roster.save
      redirect_to @roster, :notice => "Successfully created roster."
    else
      render :action => 'new'
    end
  end

  def edit
    @roster = Roster.find(params[:id])
  end

  def update
    @roster = Roster.find(params[:id])
    if @roster.update_attributes(params[:roster])
      redirect_to @roster, :notice  => "Successfully updated roster."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @roster = Roster.find(params[:id])
    @roster.destroy
    redirect_to rosters_url, :notice => "Successfully destroyed roster."
  end
  
  def roster
    @users = Group.export
    @groups = Group.all
    render :layout => "stretched"
  end
end
