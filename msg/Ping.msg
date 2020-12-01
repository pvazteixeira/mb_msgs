# 

std_msgs/Header header

# slightly inneficient due to the duplicated header, but needed for deserialization
# NOTE: consider turning these into arrays to fully support volumetric sensors
sensor_msgs/Image magnitude
sensor_msgs/Image phase

uint32 num_beams   # same as image width
uint32 num_bins    # same as image height

float32[] range    # range bin positions (same length as image height)
float32[] tvg      # time-varying gain over range or TVG curve parameters (e.g. A,B,C,L); set to 1 if unknown

# these vectors define the nominal direction (azimuth and elevation) for each beam
# alternatively, if using a split-beam sonar, these can be used to store the angle
# estimates for each range bin
float32[] azimuth   # SBES: azimuth estimate; MB:nominal beam azmiuth [rad]
float32[] elevation # SBES: elevation estimate; MB:nominal beam elevation [rad]

# beamwidth
float32 hfov # horizontal (azimuth) beam width (in-plane) [rad]
float32 vfov # vertical (elevation) beam width (out-of-plane) [rad]

# for all fields below, use -1 if unavailable/unknown
float32 frequency   # acoustic signal carrier frequency [Hz]
float32 pressure    # external pressure [Pa]
float32 salinity    # water salinity [ppt]
float32 temperature # external temperature [deg C]
float32 soundspeed  # speed of sound, as computed and used by the sonar [m/s]
float32 rx_gain     # receiver gain [dB]
float32 tx_gain     # transmitter gain [dB]