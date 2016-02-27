Geocoder.configure(
	:timeout => 5,

	ip_lookup: :maxmind_local,

	maxmind_local: {
		file: File.join('folder', 'GeoLiteCity.dat')
	}
)