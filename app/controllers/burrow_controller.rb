class BurrowController < ApplicationController
  def index
      @location = Location.new(location_params)

      @location.user_id = current_user.id

      if @location.save
        puts "*********************"
        puts @location
        puts "*********************"
        puts @location.user_id
        puts "**********************"
        latitude = @location.latitude
        puts "****************"
        puts latitude
        puts "************"
        # if latitude < 34.0
        #   x = Location.find(3)
        # end
        # current_user.location_id = x.id
        current_user.save
      end

    @location.destroy!

    @locations = Location.all

  end

  def members
  end

  def places
  end

  def time
  end

  private

  def location_params
  	params.permit(:latitude, :longitude, :user_id)
  end
  
end
