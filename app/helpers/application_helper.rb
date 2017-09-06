module ApplicationHelper
    def get_url date
        url = URI.encode("#{request.base_url}#{request.path}?term=#{params[:term]}&doctor_id=#{params[:doctor_id]}&clinic=#{params[:clinic]}&date=#{date}")
    end
end
