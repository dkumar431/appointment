class SearchController < ApplicationController
  def suggestions
    search_suggestions = ClinicDoctor.get_available_doctors_clinics()
    render json: {names: search_suggestions}
    
  end
    def index
        
        if params["clinic"] == "yes"
            @clinic = Clinic.find(params[:doctor_id])
        else
            @doctor = Doctor.find(params[:doctor_id])
            # byebug
        end
    end 
    def create 
        
    end
end
