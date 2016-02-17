class ImprintsController < ApplicationController
	def new
  	end
  	def create
  		@imprint = Article.new(params[:imprint])
 
 		@imprint.save
  		redirect_to @imprint
  	end
end
