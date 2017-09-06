class SearchController < ApplicationController
  def suggestions
    search_suggestions = ClinicDoctor.get_available_doctors_clinics()
    render json: {names: search_suggestions}
    
  end
    def index
        @clinic = Clinic.first
        @doctor = Doctor.first
        
        if params["clinic"] == "yes"
            @clinic = Clinic.first
        else
            @doctor = Doctor.first
        end
    end 
    def create 
        
    end
end
