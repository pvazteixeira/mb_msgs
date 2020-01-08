std_msgs/Header header

# slightly inneficient due to the duplicated header, but needed for deserialization
# (could make these into arrays to fully support volumetric sensors)
sensor_msgs/Image magnitude
sensor_msgs/Image phase
# we could instead modify sensor_msgs/Image, keeping most fields and renaming others
# string encoding
# uint8 is_bigendian
# uint32 step
# uint8[] data

uint32 num_beams   # same as image width
uint32 num_bins    # same as image height
float32[] range
float64[] tvg      # time-varying gain (set to 1 if unavailable/unknown)

# these vectors define the nominal direction (azimuth and elevation) for each beam
float32[] azimuth
float32[] elevation

# beamwidth
float32 hfov # horizontal (azimuth) beam width (in-plane) [rad]
float32 vfov # vertical (elevation) beam width (out-of-plane) [rad]

# for all fields below, use -1 if unavailable/unknown
float32 frequency   # acoustic signal carrier frequency [Hz]
float32 pressure    # external pressure [Pa]
float32 salinity    # water salinity [ppt]
float32 temperature # external temperature [deg C]
# float32 soundspeed # speed of sound, as computed and used by the sonar [m/s]
float32 rx_gain     # receiver gain [dB]
float32 tx_gain     # transmitter gain [dB]