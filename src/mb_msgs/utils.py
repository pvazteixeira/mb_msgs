#!/usr/bin/env python
# -*- coding: utf-8 -*-

'''
Scan to PointCloud2 conversion

Author: Pedro Vaz Teixeira
'''

import numpy as np

from sensor_msgs import point_cloud2
from sensor_msgs.msg import PointCloud2, PointField

from mb_msgs.msg import Scan

def scan_to_cloud(scan_msg):
    """
    Convert mb_msgs/Scan to sensor_msgs/PointCloud2
    """
    points = []
    for beam in range(len(scan_msg.range)):
        r = scan_msg.range[beam]

        if r<scan_msg.range_min or r>scan_msg.range_max:
            continue

        az = scan_msg.azimuth[beam]
        el = scan_msg.elevation[beam]

        x = r*np.cos(el)*np.cos(az)
        y = r*np.cos(el)*np.sin(az)
        z = r*np.sin(el)

        m = scan_msg.magnitude[beam]
        p = scan_msg.phase[beam]
        l = scan_msg.label[beam]

        points.append([x,y,z,m,p,l])

    fields = [PointField('x', 0, PointField.FLOAT32, 1),
              PointField('y', 4, PointField.FLOAT32, 1),
              PointField('z', 8, PointField.FLOAT32, 1),
              PointField('mag', 12, PointField.FLOAT32, 1),
              PointField('phase', 16, PointField.FLOAT32, 1),
              PointField('label', 16, PointField.UINT32, 1),
              ]
    return point_cloud2.create_cloud(scan_msg.header, fields, points)
