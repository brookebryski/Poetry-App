class PoemsController < ApplicationController
	
	def index
		@poems = Poem.all
	
		render json: @poems, status: 200
	  end
	  
	  def show
		@poem = Poem.find(params[:id])
		
		render json: @poem, status: 200
	  end
	  
	  def create
		@poem = Poem.create(poem_params)
		
		render json: @poem, status: 200
	  end
	  
	  def update
		@poem = Poem.find(params[:id])
		@poem.update(poem_params)
		render json: @poem, status: 200
	  end
	  
	  def destroy 
		@poem = Poem.find(params[:id])
		@poem.delete
	
		render json: {poemId: @poem.id}
	  end
	
	
	  private
		def poem_params
		  params.require(:poem).permit(:body)
		end
	end

