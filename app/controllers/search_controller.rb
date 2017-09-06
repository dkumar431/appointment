class SearchController < ApplicationController
  def suggestions
    search_suggestions = ClinicsDoctor.get_available_doctors_clinics()
    render json: {names: search_suggestions}
    
  end
    def index
        @clinic = Clinic.first
        @doctor = Doctor.first
        if params[:clinic].present?
            @clinic = Clinic.first
        elsif params[:doctor].present?
            @doctor = Doctor.first
        end

    end 
end
