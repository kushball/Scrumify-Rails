 # This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130313022610) do

  create_table "bugs", :force => true do |t|
    t.integer  "code_review_id"
    t.string   "name"
    t.string   "symptom"
    t.text     "cause"
    t.text     "suggested_fix"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "charge_numbers", :force => true do |t|
    t.integer  "group_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "code_reviews", :force => true do |t|
    t.string   "name"
    t.integer  "group_id"
    t.integer  "moderator_id"
    t.integer  "recorder_id"
    t.integer  "reader_id"
    t.integer  "author_id"
    t.integer  "inspector_id"
    t.string   "files_reviewed"
    t.text     "expected_functionality"
    t.text     "actual_functionality"
    t.text     "additional_comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "time_period_id"
  end

  create_table "comments", :force => true do |t|
    t.integer  "commentable_id",   :default => 0
    t.string   "commentable_type", :default => ""
    t.string   "title",            :default => ""
    t.text     "body"
    t.string   "subject",          :default => ""
    t.integer  "user_id",          :default => 0,  :null => false
    t.integer  "group_id",         :default => 0,  :null => false
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id"], :name => "index_comments_on_commentable_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "custom_fields", :force => true do |t|
    t.integer  "custom_form_id"
    t.boolean  "complex"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "custom_forms", :force => true do |t|
    t.integer  "group_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_field_steps", :force => true do |t|
    t.integer  "data_field_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_fields", :force => true do |t|
    t.integer  "custom_field_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "documentation_id"
    t.string   "field_name"
  end

  create_table "days", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.text     "description"
    t.integer  "schedule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deviations", :force => true do |t|
    t.text     "body"
    t.integer  "use_case_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documentations", :force => true do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "custom_form_id"
  end

  create_table "enrolled_students", :force => true do |t|
    t.integer  "roster_id"
    t.string   "email"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "invited_users"
    t.integer  "max_members"
    t.integer  "total_members"
    t.string   "privacy"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator"
    t.string   "profile_image"
    t.integer  "discussion_section_1", :default => 3
    t.integer  "discussion_section_2", :default => 3
    t.integer  "discussion_section_3", :default => 3
    t.integer  "deputy_1"
    t.integer  "deputy_2"
    t.integer  "course_id"
  end

  create_table "memberships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "compatibility_score", :default => 0
    t.string   "role"
  end

  create_table "obligations", :force => true do |t|
    t.integer  "user_id"
    t.integer  "membership_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "peer_reviews", :force => true do |t|
    t.integer  "user_id"
    t.integer  "reviewee_id"
    t.integer  "review_period_id"
    t.integer  "rating"
    t.text     "review"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "completed",        :default => false
  end

  create_table "review_periods", :force => true do |t|
    t.string   "name"
    t.date     "starts_on"
    t.date     "ends_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "risk_comments", :force => true do |t|
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "risk_id"
    t.integer  "author"
  end

  create_table "risk_matrices", :force => true do |t|
    t.integer  "group_id"
    t.integer  "time_period_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "risks", :force => true do |t|
    t.text     "description"
    t.text     "mitigation"
    t.integer  "priority"
    t.string   "status"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "risk_matrix_id"
    t.string   "number"
    t.integer  "author_id"
  end

  create_table "roles", :force => true do |t|
    t.integer  "group_id"
    t.string   "name"
    t.text     "description"
    t.string   "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rosters", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_id"
  end

  create_table "schedules", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.integer  "statable_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "statable_type"
  end

  create_table "stories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "tasks", :force => true do |t|
    t.integer  "story_id"
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "state_id"
  end

  create_table "time_blocks", :force => true do |t|
    t.string   "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "chunk_of_time"
    t.text     "description"
    t.integer  "day_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "recurring",     :default => false
  end

  create_table "time_logs", :force => true do |t|
    t.integer  "timecard_id"
    t.string   "day"
    t.integer  "charge_number_id"
    t.decimal  "hours",            :precision => 3, :scale => 1
    t.boolean  "actual"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_periods", :force => true do |t|
    t.string   "name"
    t.datetime "starts_on"
    t.datetime "soft_ends_on"
    t.datetime "hard_ends_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_id"
  end

  create_table "timecard_periods", :force => true do |t|
    t.string   "name"
    t.date     "actual_starts_on"
    t.date     "actual_ends_on"
    t.date     "estimate_starts_on"
    t.date     "estimate_ends_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "due_on"
  end

  create_table "timecards", :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.integer  "timecard_period_id"
    t.text     "issues"
    t.text     "todo"
    t.text     "done"
    t.text     "risks"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "completed",          :default => false
  end

  create_table "use_cases", :force => true do |t|
    t.string   "title"
    t.text     "success_scenario"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_stats", :force => true do |t|
    t.integer  "user_id"
    t.decimal  "total_velocity",               :precision => 10, :scale => 0
    t.decimal  "weekly_velocity",              :precision => 10, :scale => 0
    t.decimal  "total_hours",                  :precision => 10, :scale => 0
    t.decimal  "weekly_hours",                 :precision => 10, :scale => 0
    t.decimal  "total_actual",                 :precision => 10, :scale => 0
    t.decimal  "weekly_actual",                :precision => 10, :scale => 0
    t.decimal  "total_estimates",              :precision => 10, :scale => 0
    t.decimal  "weekly_estimates",             :precision => 10, :scale => 0
    t.integer  "total_assignments_completed"
    t.integer  "weekly_assignments_completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_stories", :force => true do |t|
    t.string   "actor"
    t.text     "goal"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                     :default => "",             :null => false
    t.string   "encrypted_password",         :limit => 128, :default => "",             :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                             :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthday"
    t.text     "about"
    t.string   "location"
    t.string   "school"
    t.string   "occupation"
    t.string   "aim"
    t.string   "live"
    t.string   "skype"
    t.string   "gtalk"
    t.string   "phone"
    t.integer  "html"
    t.integer  "css"
    t.integer  "javascript"
    t.integer  "java"
    t.integer  "python"
    t.integer  "ruby_ror"
    t.integer  "sql"
    t.integer  "cpp"
    t.string   "other"
    t.boolean  "hide_email",                                :default => true
    t.boolean  "hide_phone",                                :default => true
    t.boolean  "hide_ims",                                  :default => true
    t.string   "birthday_privacy",                          :default => "absolute"
    t.string   "signup_status",                             :default => "account_step"
    t.string   "profile_image"
    t.boolean  "personal_information_added",                :default => false
    t.integer  "discussion_section_1",                      :default => 0
    t.integer  "discussion_section_2",                      :default => 0
    t.integer  "discussion_section_3",                      :default => 0
    t.text     "preferred_teammates"
    t.boolean  "admin",                                     :default => false
    t.text     "preferred_teammates_store"
    t.boolean  "account_disabled",                          :default => true
    t.boolean  "tutor",                                     :default => false
    t.integer  "roster_id"
    t.boolean  "dropped"
    t.integer  "course_id"
    t.integer  "selected_course"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
