class SearchController < ApplicationController
    def index
        if params[:clinic_id].present?
            @clinic = Clinic.first
        elsif params[:doctor_id].present?
            @doctor = Doctor.first
        end

    end 
end
