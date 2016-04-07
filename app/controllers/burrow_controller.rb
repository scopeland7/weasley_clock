class BurrowController < ApplicationController

  include BurrowHelper

  def index
      
      @locations = Location.all

      @location = Location.new(location_params)

      @location.user_id = current_user.id

      distances = []

      puts "****************"
      puts @location.latitude
      puts @location.longitude
      puts Location.first.longitude
      puts "****************"



      if @location.latitude != nil || 
        @locations.each do |location|
          puts dist_btw_coords(@location.latitude, @location.longitude, location.latitude, location.longitude) 
          if dist_btw_coords(@location.latitude, @location.longitude, location.latitude, location.longitude) <= 0.5
            distances.push location
          end
          distances.sort!
        end
        puts "*******************"
        puts distances
        puts "********************"
      end

      if distances.count > 0 
        closest_location = distances.first

        location_id = closest_location.id

        current_loc = Location.find(location_id)

        id_num = current_user.id
        
        current_loc.user_id = current_user.id

        current_user.location_id = current_loc.id

        current_loc.save
        current_user.save
      elsif distances == []
        current_user.location_id = nil
        current_user.save

      end

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
