class ApiInformationsController < ApplicationController

    def index
        token = ApiInformation.last
        render json: token
    end

    def create
        puts "=================================="
        puts params
        puts "=================================="
        api_token = ApiInformation.new(token_params)
        if api_token.save
            render json: api_token
        else
            render json: {error: "Failed to create new API TOKEN"}
        end
    end

    private
    def token_params
        params.require(:api_information).permit(:access_token, :refresh_token, :token_name, :token_type, :scope, :expires_in)
    end
end
