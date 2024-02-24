<!--
NEPI Dual-Use License
Project: nepi_ros_interfaces

This license applies to any user of NEPI Engine software

Copyright (C) 2023 Numurus, LLC <https://www.numurus.com>
see https://github.com/numurus-nepi/nepi_ros_interfaces

This software is dual-licensed under the terms of either a NEPI software developer license
or a NEPI software commercial license.

The terms of both the NEPI software developer and commercial licenses
can be found at: www.numurus.com/licensing-nepi-engine

Redistributions in source code must retain this top-level comment block.
Plagiarizing this software to sidestep the license obligations is illegal.

Contact Information:
====================
- https://www.numurus.com/licensing-nepi-engine
- mailto:nepi@numurus.com

-->
# nepi_ros_interfaces

This repository contains the public API for the NEPI ROS Interface. All NEPI-custom message and service definitions that are exposed to external applications are contained in this repo, along with ROS support files (e.g., rviz-config files).

### Build and Install ###
This repository is included as a submodule of _nepi_base_ws_ and is built for NEPI devices using the build instructions contained in that project's top-level README.

This repository may also be built specifically to interface ROS-enabled non-NEPI devices with a NEPI device by way of the NEPI ROS API. In that case, include this repository in the _src_ subdirectory of any catkin workspace and use standard catkin or catkin-tools build directives. Sourcing the resulting _setup.bash_ file will import the NEPI ROS API (message and service definitions) to the current environment to satisfy your application's build-time and/or run-time dependencies. In this case, ensure that you are building the proper release-point/tag of the repo consistent with the NEPI version that the device you are interfacing to is running. (See Branching and Tagging Strategy below)

### Complete API Documentation ###
The [NEPI Engine Local System Interface API](https://nepi.com/documentation/nepi-engine-api-manual/) provides complete API documentation.

### Branching and Tagging Strategy ###
This repository follows the same basic branch, merge, and tag strategy as _nepi_base_ws_: The _master_ branch is reserved for release points. The _develop_ branch and sub-braches are employed for active development. At release time, the _develop_ branch is merged with any sub-branches to be included in the release, and the _master_ branch is merged (using --no-ff, or non-fast-forward merge) with _develop_. Git Annotated tags are used to mark release points and include high-level itemized details about changes in the release.

### Contribution guidelines ###
Bug reports, feature requests, and source code contributions (in the form of pull requests) are gladly accepted!

### Who do I talk to? ###
At present, all user contributions and requests are vetted by Numurus technical staff, so you can use any convenient mechanism to contact us.

