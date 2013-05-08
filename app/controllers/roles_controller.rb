class RolesController < ApplicationController
  load_and_authorize_resource
  
  def index
    if current_user.admin
      @roles = Role.all
    else
      @roles = current_user.groups.first.roles
    end
  end

  def show
    @role = Role.find(params[:id])
  end

  def new
    @role = Role.new
    if current_user.admin
    else
      @users = current_user.groups.first.users
    end
  end

  def create
    @role = Role.new(params[:role])
    @role.group_id = current_user.groups.first.id
    user = User.find(params[:role][:user_id])
    
    if @role.save
      Obligation.create(:user_id => user.id, :membership_id => user.memberships.first.id, :role_id => @role.id)
      redirect_to roles_path, :notice => "Successfully created role."
    else
      render :action => 'new'
    end
  end

  def edit
    @role = Role.find(params[:id])
    @role.user_id = @role.user.id
    if current_user.admin
    else
      @users = current_user.groups.first.users
    end
  end

  def update
    @role = Role.find(params[:id])
    old_user = @role.user
    new_user = User.find(params[:role][:user_id])
    if @role.update_attributes(params[:role])
      if params[:role][:user_id] != old_user.id
        old_obligation = Obligation.where(:user_id => old_user.id, :membership_id => old_user.memberships.first.id, :role_id => @role.id).first
        old_obligation.destroy
        Obligation.create(:user_id => new_user.id, :membership_id => new_user.memberships.first.id, :role_id => @role.id)
      end
      redirect_to roles_path, :notice  => "Successfully updated role."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy
    redirect_to roles_url, :notice => "Successfully destroyed role."
  end
end
