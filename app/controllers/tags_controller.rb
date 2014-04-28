class TagsController < ApplicationController

	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tag = Tag.all
	end

	def create
  	@tag = Tag.new(tag_params)
  	#@tag.article_id = params[:article_id]

  	@tag.save

  	redirect_to tag_path(@tag)
	end

	def tag_params
  	params.require(:tag).permit(:name)
	end

end
