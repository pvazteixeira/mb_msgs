std_msgs/Header header

string encoding
uint8 is_bigendian
uint32 step
uint8[] data

uint32 num_beams   # same as image width
float64[] azimuths

uint32 num_bins    # same as image height
float64[] ranges

# for all fields below, use -1 if unavailable/unknown
float64 frequency   # acoustic signal carrier frequency [Hz]
float64 pressure    # external pressure [Pa]
float64 salinity    # water salinity [ppt]
float64 temperature # external temperature [deg C]