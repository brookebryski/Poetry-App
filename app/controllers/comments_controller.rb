class CommentsController < ApplicationController
    def index
		if params["poem_id"]
			@poem = Poem.find(params["poem_id"])
			@comments = Comment.all.where(poem_id: params["poem_id"])

			respond_to do |format|
				format.html {render partial: 'comments/poem_comments', locals: { comments: @comments, poem: @poem}}
				format.json {render json: @comments}
			end
		else
			@comments = Comment.all
			respond_to do |f|
				f.html {render :index} 
				f.json {render json: @comments}
			end
		end
	end
	
	def show
		@comment = Comment.find(params["id"])
		respond_to do |f|
			f.html {render :show} 
			f.json {render json: @comment}
		end
	end
	
	def new
		@poem = Poem.find(params["poem_id"])
		@comment = @poem.comments.build
	end
	
	def create
		@poem = Poem.find(params["poem_id"])
		@comment = @poem.comments.build
		if @comment.update(comment_params)
			respond_to do |format|
				format.html {redirect_to poem_path(@poem)}
				format.json {render json: @comment}
			end
		else
			flash.now[:message] = @comment.errors[:content][0]
			render :new
		end
	end
	
	def edit
		@comment = Comment.find(params["id"])
	end
	
	def update
		@comment = Comment.find(params["id"])
		if @comment.update(comment_params)
			redirect_to comment_path(@comment)
		else
			render :edit 
		end
	end
	
	def destroy
		@comment = Comment.find(params["id"])
		@comment.delete
		redirect_to comments_path
	end

	private
		def comment_params
			params.require(:comment).permit(:poem_id, :content)
		end
end