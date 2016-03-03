module BurrowHelper

	def coords_to_utm(lat, lon)
		utm = GeoUtm::LatLon.new(lat, lon)
		return [utm.e, utm.n]
	end

	def dist_btw_coords(lat1, lon1, lat2, lon2)
		coords1 = coords_to_utm(lat1, lon1)
		coords2 = coords_to_utm(lat2, lon2)
		
	end

end
