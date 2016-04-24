class CommentsController < ApplicationController
	def index
		@the_concert = Concert.find_by(id:params[:concert_id])
		@the_comments = @the_concert.comments.all
		render 'index'
	end

	def new
		@the_concert = Concert.find_by(id:params[:concert_id])
		@the_comment = @the_concert.comments.new
		render 'new'
	end

	def create
		@the_concert = Concert.find_by(id:params[:concert_id])
		@the_comment = @the_concert.comments.new(name: params[:comment][:name], 
			date: params[:comment][:date], 
			comment: params[:comment][:comment])
		if @the_comment.save
			redirect_to action: 'index', controller: 'comments', concert_id: @the_concert.id
		else
			render 'new'
		end
	end

end
