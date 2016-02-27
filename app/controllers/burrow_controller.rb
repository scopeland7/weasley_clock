class BurrowController < ApplicationController
  def index
  	# @result = Geocoder.location("96.83.4.113")
  	@request = request.safe_location 
  	@result = HTTParty.get("http://ip-api.com/json/96.83.4.113")
  	@lat = @result['lat']
  	@lon = @result['lon']
  	@address = Geocoder.address("#{@lat}, #{@lon}")
  end

  def members
  end

  def places
  end

  def time
  end
end
