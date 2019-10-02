# Single scan from a planar multibeam
# nominal beam directions are assumed to lie within the XY plane
# This specification follows sensor_msgs::LaserScan closely
# and takes its recommendation to create a specialized type for sonar

Header header

float32 hfov             # azimuthal field of view (single beam) [rad]
float32 vfov             # elevation field of view (single beam) [rad]

float32 range_min        # minimum range value [m]
float32 range_max        # maximum range value [m]

float32[] azimuths       # not all beams are created equal(ly spaced) [rad]

float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)
float32[] intensities    # intensity data [device-specific units].  If your
                         # device does not provide intensities, please leave
                         # the array empty.