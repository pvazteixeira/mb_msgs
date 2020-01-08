# mb_msgs

ROS message types for sonars.

## Overview

This package contains two message types meant for use with single-, split- and multi-beam sonars. It defines two message types

* **Ping** - this type is closer to raw sonar data; it uses the `sensor_msgs/Image` type to transport magnitude and phase from the sonar, and defines additional information (such as beam direction, range bins, etc.)
* **Scan** - this type captures returns extracted from the raw sonar data. For each return, the message carries its coordinates, magnitude, and phase. It also carries range bounds and beamwidth information.

## Contributing

Feel free to contribute by opening issues and creating pull requests.
