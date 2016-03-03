module BurrowHelper

	def coords_to_utm(lat, lon)
		utm = GeoUtm::LatLon.new(lat, lon).to_utm
		return [utm.n, utm.e]
	end

	def dist_btw_coords(lat1, lon1, lat2, lon2)
		coords1 = coords_to_utm(lat1, lon1)
		coords2 = coords_to_utm(lat2, lon2)
		distance = Math.sqrt((coords1[0] - coords2[0])**2 + (coords1[1] - coords2[1])**2)
		dist_in_km = distance / 1000.0
		dist_in_miles = dist_in_km / 1.6093
		return dist_in_miles
	end

end
