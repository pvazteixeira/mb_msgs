# This message is designed to capture the returns extracted/derived from a sonar
# ping. The range, azimuth, and elevation vectors describe the positions of the
# returns in spherical coordinates (in the sonar's reference frame). They should
# support different types of sonar:
#  - single-beam (az=el=0, as returns are assumed to be on the beam's main axis)
#  - multi-beam (typically el=0)
#  - split-beam (may have non-zero values for azimuth and elevation)
#
# This specification follows sensor_msgs::LaserScan closely
# and takes its recommendation to create a specialized type for sonar

Header header

# these describe the nominal beamwidth (-3dB) in the azimuth (hfov) and
# elevation (vfov) directions
float32 hfov             # azimuthal field of view (single beam) [rad]
float32 vfov             # elevation field of view (single beam) [rad]

float32 range_min        # minimum range value [m]
float32 range_max        # maximum range value [m]

float32[] range         # range data [m] (Note: values < range_min or > range_max should be discarded)
float32[] azimuth       # not all beams are created equal(ly spaced) [rad]
float32[] elevation     # not all beams are created equal(ly spaced) [rad]

float32[] magnitude     # magnitude data [device-specific units].  If your
                        # device does not provide intensities, please leave
                        # the array empty.
float32[] phase         # phase data. If unavailable, set to 0.
uint32[] label          # return labels (if available)