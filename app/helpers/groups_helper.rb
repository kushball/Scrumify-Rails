module GroupsHelper
  #sets a link class to active based on the current page
  def is_active?(page_name)
      case page_name
      when "general_information"
        if params[:view_option].blank?
          "active"
        end
      when "schedule"
        if params[:view_option] == "schedule"
          "active"
        end
      when "time_cards"
        if params[:view_option] == "time_cards"
          "active"
        end
      end
    end
end
