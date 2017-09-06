class SearchController < ApplicationController
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
