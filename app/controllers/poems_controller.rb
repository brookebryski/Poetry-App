class PoemsController < ApplicationController

	def new_comment_form
		render partial: 'poems/new_comment_form'
	end

	def index
		@poems = Poem.all
		respond_to do |f|
			f.html {render :index}
			f.json {render json: @poems}
		end
    end
    
    def show
		@poem = Poem.find(params["id"])
		respond_to do |f|
			f.html {render :show}
			f.json {render json: @poem }
		end
	end
    
    def new
		@poem = Poem.new
	end
	
	def create
		@poem = Poem.new(poem_params)
		if @poem.save
			respond_to do |f|
				f.html {redirect_to poems_path}
				f.json {render json: @poems}
			end
		else
			render :new
		end
	end
end