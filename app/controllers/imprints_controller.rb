class ImprintsController < ApplicationController
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

  	def index
	  	@imprints = Imprint.all
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
