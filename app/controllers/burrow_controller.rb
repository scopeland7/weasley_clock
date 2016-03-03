class BurrowController < ApplicationController

  require 'burrow_helper'
  
  def index
      @location = Location.new(location_params)

      @location.user_id = current_user.id

      location_id = rand(1..5)

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

    @locations = Location.all

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
