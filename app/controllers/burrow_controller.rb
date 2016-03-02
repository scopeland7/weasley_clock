class BurrowController < ApplicationController
  def index
  	@location = Location.new(location_params)

  	if @location.save
      puts "*******************"
  		puts @location
      puts "********************"
  	else
  		render json: {status: 'failure'}
  	end

  end

  def members
  end

  def places
  end

  def time
  end

  private

  def location_params
  	params.permit(:latitude, :longitude)
  end
  
end
