class ImprintsController < ApplicationController
	before_action :authenticate_user!, :except => [:show, :index]  

	def new
  	end

  	def create
  		@imprint = Imprint.new(imprint_params)
  		@imprint.save
	  	redirect_to @imprint
  	end

  	def show
	  	@imprint = Imprint.find(params[:id])
	end

	CIRCLE50 = 0.000009 * 50;
  	def index
  		if (params[:lng])
  			@imprints = Imprint.where(lng: (params[:lng].to_f - CIRCLE50)..(params[:lng].to_f + CIRCLE50),lat: (params[:lat].to_f - CIRCLE50)..(params[:lat].to_f + CIRCLE50))
  		else 
	  		@imprints = Imprint.all
	  	end
	  	#@jobs = User.find(params[:user_id]).jobs.recent
	end

	def search

	end

  	private
	  def imprint_params
	  	params.require(:lng)
	    params.require(:lat)
	    params.require(:accuracy)
	    params.require(:text)
	    params.permit(:lng, :lat, :accuracy, :text)
	  end


end
