require 'date'
class ConcertsController < ApplicationController
	def index
		@concerts_today = Concert.where("date < ?", Date.tomorrow).where("date > ?", Date.yesterday)
		@concerts_month = Concert.where("date > ?", Time.now).where("date < ?", Time.now + 4.weeks).limit(10)
		@concerts_featured = Concert.all.limit(3)
		render 'index'
	end

	def show
		@my_concert = Concert.find(params[:id])
		render 'show'
	end

	def new
		@my_concert = Concert.new
		render 'new'
	end

	def create
		@my_concert = Concert.new(:artist => params[:concert][:artist], 
			:venue => params[:concert][:venue], 
			:city => params[:concert][:city], 
			:date => params[:concert][:date], 
			:price => params[:concert][:price], 
			:description => params[:concert][:description])

		if @my_concert.save
			redirect_to "/concerts/#{@my_concert.id}"
		else
			render 'new'
		end
	end

end
