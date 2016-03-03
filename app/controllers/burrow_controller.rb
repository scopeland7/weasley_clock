class BurrowController < ApplicationController

  include BurrowHelper

  def index
      
      @locations = Location.all

      @location = Location.new(location_params)

      @location.user_id = current_user.id

      distances = []

      if @location.latitude != nil
        @locations.each do |location|
          if dist_btw_coords(@location.latitude, @location.longitude, location.latitude, location.longitude) <= 0.5
            distances.push location
          end
          distances.sort!
        end
      end

      closest_location = distances.first

      location_id = closest_location.id

      current_loc = Location.find(location_id)

      id_num = current_user.id
      
      current_loc.user_id = current_user.id

      current_user.location_id = current_loc.id

      current_loc.save
      current_user.save

      puts "*************************"
      puts @location.user_id
      puts location_id
      puts current_loc
      puts current_loc.id
      puts current_user.location_id
      puts "************************"

      # if @location.save
      #   puts "*********************"
      #   puts @location
      #   puts "*********************"
      #   puts @location.user_id
      #   puts "**********************"
      #   latitude = @location.latitude
      #   puts "****************"
      #   puts latitude
      #   puts "************"
        # if latitude < 34.0
        #   x = Location.find(3)
        # end
        # current_user.location_id = x.id
        # current_user.save
      # end

    @location.destroy!


  end

  def members
    @locations = Location.all
    @users = User.all
  end

  def places
    @locations = Location.all
  end

  def time
    @users = User.all
  end

  private

  def location_params
  	params.permit(:latitude, :longitude, :user_id)
  end
  
end
