#[[
Copyright (c) 2024 Numurus, LLC <https://www.numurus.com>.

This file is part of nepi-engine
(see https://github.com/nepi-engine).

License: 3-clause BSD, see https://opensource.org/licenses/BSD-3-Clause
]]

cmake_minimum_required(VERSION 3.5)
project(nepi_ros_interfaces)

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

## Declare dependent packages
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces)
find_package(std_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(nav_msgs REQUIRED)

################################################
## Declare ROS messages, services and actions ##
################################################

## Generate messages in the 'msg' folder
set(msg_files
  "msg/Annotation.msg"
  "msg/Reset.msg"
  "msg/SaveData.msg"
  "msg/SaveDataStatus.msg"
  "msg/SaveDataRate.msg"
  "msg/DatafileCtrl3DX.msg"
  "msg/RangeWindow.msg"
  "msg/Angle3DX.msg"
  "msg/AutoManualSelection3DX.msg"
  "msg/Status3DX.msg"
  "msg/IDXStatus.msg"
  "msg/HwTrigInCfg.msg"
  "msg/HwTrigOutCfg.msg"
  "msg/TestPatternCfg.msg"
  "msg/PeriodicSwTrig.msg"
  "msg/NavPose.msg"
  "msg/StampedString.msg"
  "msg/SystemStatus.msg"
  "msg/SystemDefs.msg"
  "msg/TriggerStatus.msg"
  "msg/WarningFlags.msg"
  "msg/NavPoseStatus.msg"
  "msg/TimeStatus.msg"
  "msg/TriggerIndexSettings.msg"
  "msg/ClassifierSelection.msg"
  "msg/Heading.msg"
  "msg/NEPILinkStatus.msg"
  "msg/StringArray.msg"
  "msg/StringEnable.msg"
  "msg/Offset.msg"
  "msg/RUISettings.msg"
  "msg/SonarFieldOfView.msg"
  "msg/TargetLocalization.msg"
  "msg/TargetLocalizationScene.msg"
  "msg/ImageMuxInput.msg"
  "msg/ImageMuxSequence.msg"
  "msg/AutoStartEnabled.msg"
  "msg/WifiCredentials.msg"
  "msg/PanTiltPosition.msg"
  "msg/PanTiltLimits.msg"
  "msg/PanTiltStatus.msg"
  "msg/SingleAxisTimedMove.msg"
  "msg/AbsolutePanTiltWaypoint.msg"
  "msg/OnvifDeviceCfg.msg"
  "msg/OnvifDeviceStatus.msg"
  "msg/AxisControls.msg"
  "msg/RBXErrorBounds.msg"
  "msg/RBXGotoErrors.msg"
  "msg/RBXStatus.msg"
  "msg/LSXStatus.msg"
)

## Generate services in the 'srv' folder
set(srv_files
  "srv/ConvertRawTstamp.srv"
  "srv/FileReset.srv"
  "srv/SystemDefsQuery.srv"
  "srv/TriggerStatusQuery.srv"
  "srv/TriggerDefs.srv"
  "srv/NavPoseQuery.srv"
  "srv/NavPoseStatusQuery.srv"
  "srv/TimeStatusQuery.srv"
  "srv/IPAddrQuery.srv"
  "srv/WifiQuery.srv"
  "srv/OpEnvironmentQuery.srv"
  "srv/ImageClassifierListQuery.srv"
  "srv/ImageClassifierStatusQuery.srv"
  "srv/DataProductQuery.srv"
  "srv/NEPILinkStatusQuery.srv"
  "srv/BandwidthUsageQuery.srv"
  "srv/SystemSoftwareStatusQuery.srv"
  "srv/IDXCapabilitiesQuery.srv"
  "srv/GetScriptsQuery.srv"
  "srv/GetRunningScriptsQuery.srv"
  "srv/GetScriptStatusQuery.srv"
  "srv/LaunchScript.srv"
  "srv/StopScript.srv"
  "srv/GetSystemStatsQuery.srv"
  "srv/SystemStorageFolderQuery.srv"
  "srv/ImageMuxSequenceQuery.srv"
  "srv/PTXCapabilitiesQuery.srv"
  "srv/OnvifDeviceListQuery.srv"
  "srv/OnvifDeviceCfgUpdate.srv"
  "srv/OnvifDeviceCfgDelete.srv"
  "srv/RBXCapabilitiesQuery.srv"
  "srv/NavPoseCapabilitiesQuery.srv"
  "srv/LSXCapabilitiesQuery.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  DEPENDENCIES builtin_interfaces std_msgs sensor_msgs geometry_msgs nav_msgs
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()

## Mark cpp header files for installation - Msgs and Services are under the project name subdir
#install(DIRECTORY include/${PROJECT_NAME}/
#  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#  FILES_MATCHING PATTERN "*.h"
#)


