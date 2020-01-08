# Range measurement message  

std_msgs/Header header

float32[] range
float32[] magnitude
float32[] phase

# beamwidth
float32 hfov # horizontal (azimuth/XY) beam width (in-plane) [rad]
float32 vfov # vertical (elevation/XZ) beam width (out-of-plane) [rad]