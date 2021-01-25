class PoemsController < ApplicationController
	def index
        poems = Poem.all
        render json: poems, except: [:created_at, :updated_at]
    end

    def show
        poem = Poem.find_by(id: params[:id])
        if poem
            render json: poems, except: [:created_at, :updated_at]
        else
            render json: {message: "Poem not found."}
        end
    end
end