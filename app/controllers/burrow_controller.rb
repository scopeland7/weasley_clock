class BurrowController < ApplicationController
  def index
  	# @result = Geocoder.location("96.83.4.113")
  	@request = request.safe_location 
  	# @result = HTTParty.get("http://ip-api.com/json/96.83.4.113")
  	@lat = 34.1268
  	@lon = -84.574
  	@address = Geocoder.address("#{@lat}, #{@lon}")
  end

  def members
  end

  def places
  end

  def time
  end

  def geocode
    position = Geocoder.coordinates(params[:query])
    respond_to do |wants|
      wants.json {render :json => position }
    end
  end
end
