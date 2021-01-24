class UsersController < ApplicationController
    def index
		@users = User.all
		respond_to do |f|
			f.html {render :index} 
			f.json {render json: @users}
		end
    end
    
    
end