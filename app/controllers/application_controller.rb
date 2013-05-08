class ApplicationController < ActionController::Base
  # check_authorization
  protect_from_forgery
  before_filter :mailer_set_url_options
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  def after_sign_in_path_for(resource)
    if resource.is_a?(User) && resource.signup_status == 'account_step'
      flash[:notice] = "Cool. Now tell us a bit about you.. "
      signup_wizard_path(:step => '2', :resource => resource)
    elsif resource.is_a?(User) && resource.signup_status == 'schedule_step'
      flash[:notice] = "Now that we've confirmed a bit of information, what times are you free?"
      signup_wizard_path(:step => '3', :resource => resource)
    elsif !resource.groups.empty? and !resource.account_disabled
      resource.groups.first
    else
      if resource.admin
        dashboard_path
      else
        root_url
      end
    end
  end
  
  def mailer_set_url_options
    ActionMailer::Base.default_url_options[:host] = request.host_with_port
  end
  
  def is_admin
      if !current_user or !current_user.admin
        redirect_to root_url, :alert => "You are not authorized to access this page."
        false
      end
  end

	def is_tutor
		if !current_user or !current_user.tutor
			redirect_to root_url, :alert => "You are not authorized to access this page."
			false
		end
	end
	
	def is_class_staff
		if current_user and (current_user.tutor or current_user.admin)
			true
		else
			redirect_to root_url, :alert => "You are not authorized to access this page."
			false
		end
	end
end
