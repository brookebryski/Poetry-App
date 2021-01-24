class UsersController < ApplicationController
    def index
		@users = User.all
		respond_to do |f|
			f.html {render :index} 
			f.json {render json: @users}
		end
    end

    def show
		@user = User.find(params["id"])
		respond_to do |f|
			f.html {render :show} 
			f.json {render json: @user}
		end
	end
	
    def new
		@poem = Poem.find(params["poem_id"])
		@user = @poem.users.build
    end

    def create
		@poem = Poem.find(params["poem_id"])
		@user = @poem.users.build
		if @user.update(user_params)
			respond_to do |format|
				format.html {redirect_to poem_path(@poem)}
				format.json {render json: @user}
			end
		else
			flash.now[:message] = @user.errors[:content][0]
			render :new
		end
    end
    
    def edit
		@user = User.find(params["id"])
    end
    
    def update
		@user = User.find(params["id"])
		if @user.update(user_params)
			redirect_to user_path(@user)
		else
			render :edit 
		end
	end
end