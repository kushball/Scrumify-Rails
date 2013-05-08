Grooopme::Application.routes.draw do

  resources :states
  resources :tasks
  resources :data_field_steps

  resources :data_fields

  resources :custom_fields

  resources :documentations

  resources :custom_forms

  resources :obligations
  resources :roles
  resources :use_cases
  resources :deviations
  resources :user_stories

	resources :groups do
	  resources :stories
	end

  resources :time_blocks, :days, :schedules, :memberships, :peer_reviews, :review_periods, :enrolled_students, :timecards, :time_logs, :charge_numbers, :timecard_periods
  resources :timecard_periods do
    post "delete_multiple", :on => :collection
  end


  devise_for :users, :controllers => { :registrations => "registrations" } do
    get "signup_wizard", :to => "registrations#signup_wizard"
  end
  
  resources :users, :only => [:index, :show]



  match "/users/:id/change_role_to_student" => "users#change_role_to_student", :as => "change_role_to_student"
  match "/users/:id/change_role_to_tutor" => "users#change_role_to_tutor", :as => "change_role_to_tutor"

  root :to => "pages#home"
  
  # Pages
  # ======================= #
  match "/stats" => "pages#stats"
  match "/roster" => "pages#roster"
  match "/configure_grouping_algorithm" => "pages#configure_grouping_algorithm"
  match "/dashboard" => "pages#dashboard"
  match "/peer_review_viewer" => "pages#peer_review_viewer"
  match "/finished_first_step" => "pages#finished_first_step"
  match "/manage_grouping" => "pages#manage_grouping"
  match "/peer_review_grader" => "pages#peer_review_grader"
  match "/time_card_grader" => "pages#time_card_grader"
  match "/disable_all_user_accounts" => "pages#disable_all_user_accounts"
  match "/enable_all_user_accounts" => "pages#enable_all_user_accounts"
  
  # Groups
  # ======================= #
  match "/change_group" => "groups#change_group"
  match "/group_users" => "groups#group_users"
  
  # Comments
  # ======================= #
  match "/add_comment" => "comments#create", :as => "add_comment"
  match "/update_comment" => "comments#update", :as => "update_comment"
  match "/destroy_comment" => "comments#destroy", :as => "destroy_comment"

  # Timecards               #
  # ======================= #
  match 'timecards/:id/set_completed', :as => "set_completed", :to => "timecards#set_completed"
  match 'timecards/:id/remove_completed', :as => "remove_completed", :to => "timecards#remove_completed"


end
