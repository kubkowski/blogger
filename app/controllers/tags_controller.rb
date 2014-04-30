class TagsController < ApplicationController
	before_filter :require_login, only: [:destroy]

	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	def create
  	@tag = Tag.new(tag_params)
  	#@tag.article_id = params[:article_id]

  	@tag.save

  	redirect_to tag_path(@tag)
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
		flash.notice = "Tag '#{@tag.name}' Deleted!"
		redirect_to root_path
	end

	def tag_params
  	params.require(:tag).permit(:name)
	end

end
