class SearchController < ApplicationController
  def suggestions
    search_suggestions = ClinicsDoctors.get_available_doctors_clinics()
    render json: {names: search_suggestions}
    
  end
end
