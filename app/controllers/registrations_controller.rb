# Overriding Devise's registrations_controller
class RegistrationsController < Devise::RegistrationsController
    layout "clean"
    prepend_before_filter :require_no_authentication, :only => [ :new, :create, :cancel ]
    prepend_before_filter :authenticate_scope!, :only => [:edit, :update, :destroy]
    include Devise::Controllers::InternalHelpers

    # GET /resource/sign_up
    def new
      resource = build_resource({})
      respond_with_navigational(resource){ render_with_scope :new }
    end

    # POST /resource
    def create
      build_resource

      if resource.save
        if resource.active_for_authentication?
          set_flash_message :notice, :signed_up if is_navigational_format?
          sign_in(resource_name, resource)
          respond_with resource, :location => redirect_location(resource_name, resource)
        else
          set_flash_message :notice, :inactive_signed_up, :reason => inactive_reason(resource) if is_navigational_format?
          expire_session_data_after_sign_in!
          respond_with resource, :location => after_inactive_sign_up_path_for(resource)
        end
      else
        clean_up_passwords(resource)
        respond_with_navigational(resource) { render_with_scope :new }
      end
    end

    # GET /resource/edit
    def edit
      render_with_scope :edit
    end
    
    # PUT /resource
    def update
      # The step of the wizzard to be rendered next
      @step = params['step']

      # Populates the teammates dropdown
      if Roster.last
        @enrolled_students = Roster.last.enrolled_students
      else
        @enrolled_students = []
      end

      # Handles the back button in signup_wizard
      if params[:back_button]
        @user = User.find(resource)
        @user.signup_status = 'account_step'
        @user.save
        clean_up_passwords(resource)
        render_with_scope :edit
      else

        # Saves current_step for sake of validation
        # Saves signup_status to prevent users from getting around the wizard
        if @step == '1'
          resource.current_step = 'account_step'
          resource.signup_status = 'information_step'
        elsif @step == '2'
          resource.current_step = 'information_step'
          resource.signup_status = 'schedule_step'
        end

        # Updates teh user
        if resource.update_with_password(params[resource_name])
          if @step == '2'
            redirect_to signup_wizard_path(:step => '3', :resource => resource), :notice => "Now that we've confirmed a bit of information, what times are you free?"
          else
            set_flash_message :notice, :updated
            redirect_to after_update_path_for(resource)
          end
        else
          if @step == '2'
            render :signup_wizard, :resource => resource, :step => '2'
          else
            clean_up_passwords(resource)
            render_with_scope :edit
          end
        end
      end
    end

    def signup_wizard
      authorize! :signup_wizard, @registration

      @resource = current_user

      # needed to populate form fields if data already exists
      # 
      # devise probably aliases resource with @user, therefore @user is being used
      # in plase of resource in the form if initialized here
      @user = User.find(@resource)

      @step = params[:step]

      # Populates the teammates dropdown
      if Roster.last
        @enrolled_students = Roster.last.enrolled_students.sort_by(&:name)
      else
        @enrolled_students = []
      end

      @daynames = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)
      @time_block = TimeBlock.new
      @today = Date.today
      @times = TimeBlock.get_time_list
    end
    

    # DELETE /resource
    def destroy
      resource.destroy
      Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
      set_flash_message :notice, :destroyed if is_navigational_format?
      respond_with_navigational(resource){ redirect_to after_sign_out_path_for(resource_name) }
    end

    # GET /resource/cancel
    # Forces the session data which is usually expired after sign
    # in to be expired now. This is useful if the user wants to
    # cancel oauth signing in/up in the middle of the process,
    # removing all OAuth session data.
    def cancel
      expire_session_data_after_sign_in!
      redirect_to new_registration_path(resource_name)
    end

    protected

      # Build a devise resource passing in the session. Useful to move
      # temporary session data to the newly created user.
      def build_resource(hash=nil)
        hash ||= params[resource_name] || {}
        self.resource = resource_class.new_with_session(hash, session)
      end

      # The path used after sign up. You need to overwrite this method
      # in your own RegistrationsController.
      def after_sign_up_path_for(resource)
        after_sign_in_path_for(resource)
      end

      # Overwrite redirect_for_sign_in so it takes uses after_sign_up_path_for.
      def redirect_location(scope, resource)
        stored_location_for(scope) || after_sign_up_path_for(resource)
      end

      # Returns the inactive reason translated.
      def inactive_reason(resource)
        reason = resource.inactive_message.to_s
        I18n.t("devise.registrations.reasons.#{reason}", :default => reason)
      end

      # The path used after sign up for inactive accounts. You need to overwrite
      # this method in your own RegistrationsController.
      def after_inactive_sign_up_path_for(resource)
        finished_first_step_path
      end

      # The default url to be used after updating a resource. You need to overwrite
      # this method in your own RegistrationsController.
      def after_update_path_for(resource)
        if defined?(super)
          ActiveSupport::Deprecation.warn "Defining after_update_path_for in ApplicationController " <<
            "is deprecated. Please add a RegistrationsController to your application and define it there."
          super
        else
          after_sign_in_path_for(resource)
        end
      end

      # Authenticates the current scope and gets the current resource from the session.
      def authenticate_scope!
        send(:"authenticate_#{resource_name}!", :force => true)
        self.resource = send(:"current_#{resource_name}")
      end
  end
