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
end