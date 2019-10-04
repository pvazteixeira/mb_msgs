std_msgs/Header header

# slightly inneficient due to the duplicated header, but needed for deserialization
sensor_msgs/Image image
# we could instead modify sensor_msgs/Image, keeping most fields and renaming others
# string encoding
# uint8 is_bigendian
# uint32 step
# uint8[] data

uint32 num_beams   # same as image width
float64[] azimuths

uint32 num_bins    # same as image height
float64[] ranges

float64[] tvg      # time-varying gain (set to 1 if unavailable/unknown)

# beamwidth
float64 hfov # horizontal (azimuth) beam width (in-plane) [rad]
float64 vfov # vertical (elevation) beam width (out-of-plane) [rad]

# for all fields below, use -1 if unavailable/unknown
float64 frequency   # acoustic signal carrier frequency [Hz]
float64 pressure    # external pressure [Pa]
float64 salinity    # water salinity [ppt]
float64 temperature # external temperature [deg C]
# float64 soundspeed # speed of sound, as computed and used by the sonar [m/s]
float64 rx_gain     # receiver gain [dB]
float64 tx_gain     # transmitter gain [dB]