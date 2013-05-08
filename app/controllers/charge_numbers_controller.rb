class ChargeNumbersController < ApplicationController
  load_and_authorize_resource

  def index
    @charge_numbers = ChargeNumber.all
  end

  def show
    @charge_number = ChargeNumber.find(params[:id])
  end

  def new
    @group = current_user.groups.first
    if current_user.is_group_deputy?
      @charge_number = ChargeNumber.new
    else 
      redirect_to group_path(current_user.groups.first, :view_option => "charge_numbers"), :notice  => "Only the Project Manager and Deputies can create charge numbers."
    end
  end

  def create
    @charge_number = ChargeNumber.new(params[:charge_number])
    if @charge_number.save
      redirect_to group_path(current_user.groups.first, :view_option => "charge_numbers"), :notice  => "Successfully created charge number."
    else
      render :action => 'new'
    end
  end

  def edit
    @group = current_user.groups.first
    if current_user.is_group_deputy?
      @charge_number = ChargeNumber.find(params[:id])
    else 
      redirect_to group_path(current_user.groups.first, :view_option => "charge_numbers"), :notice  => "Only the Project Manager and Deputies can edit charge numbers."
    end
  end

  def update
    @charge_number = ChargeNumber.find(params[:id])
    if @charge_number.update_attributes(params[:charge_number])
      redirect_to group_path(current_user.groups.first, :view_option => "charge_numbers"), :notice  => "Successfully updated charge number."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @charge_number = ChargeNumber.find(params[:id])
    @charge_number.destroy
    redirect_to group_path(current_user.groups.first, :view_option => "charge_numbers"), :notice => "Successfully deleted charge number."
  end
end
